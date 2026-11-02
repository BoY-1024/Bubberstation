/**
 * @file
 * @copyright 2020 Aleksej Komarov
 * @license MIT
 */

import { useAtomValue } from 'jotai';
import { KitchenSink } from './debug/KitchenSink';
import { backendStateAtom, resumeGenerationAtom } from './events/store'; // 自定义修改：引入窗口恢复计数供路由识别新的恢复周期
import { LoadingScreen } from './interfaces/common/LoadingScreen';
import { Window } from './layouts';

const requireInterface = require.context(
  './interfaces',
  true,
  /^(?!.*\.test\.(tsx?|jsx?)).*\.(tsx?|jsx?)$/,
);

type RoutingErrorProps = {
  type: 'notFound' | 'missingExport' | 'unknown';
  name: string;
};

function RoutingErrorWindow(props: RoutingErrorProps) {
  const { type, name } = props;

  return (
    <Window>
      <Window.Content scrollable>
        {type === 'notFound' && (
          <div>
            未找到界面 <b>{name}</b>。
          </div>
        )}
        {type === 'missingExport' && (
          <div>
            界面 <b>{name}</b> 缺少导出项。
          </div>
        )}
        {type === 'unknown' && <div>发生了未知错误。</div>}
      </Window.Content>
    </Window>
  );
}

// Displays an empty Window with scrollable content
function SuspendedWindow() {
  return (
    <Window>
      <Window.Content scrollable />
    </Window>
  );
}

// Displays a loading screen with a spinning icon
function RefreshingWindow() {
  return (
    <Window title="加载中">
      <Window.Content>
        <LoadingScreen />
      </Window.Content>
    </Window>
  );
}

// Get the component for the current route
export function getRoutedComponent(name: string) {
  const interfacePathBuilders = [
    (name: string) => `./${name}.tsx`,
    (name: string) => `./${name}.jsx`,
    (name: string) => `./${name}/index.tsx`,
    (name: string) => `./${name}/index.jsx`,
  ];

  let esModule;
  while (!esModule && interfacePathBuilders.length > 0) {
    const interfacePathBuilder = interfacePathBuilders.shift()!;
    const interfacePath = interfacePathBuilder(name);
    try {
      esModule = requireInterface(interfacePath);
    } catch (err) {
      if (err.code !== 'MODULE_NOT_FOUND') {
        throw new Error('notFound');
      }
    }
  }

  if (!esModule) {
    throw new Error('notFound');
  }

  const Component = esModule[name];
  if (!Component) {
    throw new Error('missingExport');
  }

  return Component;
}

export function RoutedComponent() {
  const { suspended, config, debug } = useAtomValue(backendStateAtom);
  const resumeGeneration = useAtomValue(resumeGenerationAtom); // 自定义修改：订阅恢复计数，使同一窗口重新打开时也能更新组件标识
  if (suspended) {
    return <SuspendedWindow />;
  }
  if (config.refreshing) {
    return <RefreshingWindow />;
  }

  if (process.env.NODE_ENV !== 'production') {
    if (debug.kitchenSink) {
      return <KitchenSink />;
    }
  }

  const name = config?.interface?.name;
  if (!name) {
    return <RoutingErrorWindow type="notFound" name="(undefined)" />;
  }

  try {
    const Component = getRoutedComponent(name);

    return <Component key={resumeGeneration} />; // 自定义修改：每次恢复重新挂载业务界面，重新显示窗口并清除上一弹窗的局部状态
  } catch (err) {
    switch (err.message) {
      case 'notFound':
        return <RoutingErrorWindow type="notFound" name={name} />;
      case 'missingExport':
        return <RoutingErrorWindow type="missingExport" name={name} />;
      default:
        return <RoutingErrorWindow type="unknown" name={name} />;
    }
  }
}
