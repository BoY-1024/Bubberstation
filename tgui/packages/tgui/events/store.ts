import { atom, createStore } from 'jotai';
import type { Config } from './types';

export const chunkingAtom = atom<Record<string, any>>({});
export const configAtom = atom<Config>({} as Config);
export const debugLayoutAtom = atom(false);
export const gameDataAtom = atom<Record<string, any>>({});
export const gameStaticDataAtom = atom<Record<string, any>>({});
export const kitchenSinkAtom = atom(false);
export const sharedAtom = atom<Record<string, any>>({});
export const suspendedAtom = atom<number | false>(Date.now()); // Start as suspended
export const suspendingAtom = atom(false);
export const resumeGenerationAtom = atom(0); // 自定义修改：保存窗口恢复次数，避免连续同类弹窗复用时仍处于隐藏状态
export const backendStateAtom = atom((get) => ({
  config: get(configAtom),
  data: {
    ...get(gameDataAtom),
    ...get(gameStaticDataAtom),
  },
  debug: {
    debugLayout: get(debugLayoutAtom),
    kitchenSink: get(kitchenSinkAtom),
  },
  outgoingPayloadQueues: get(chunkingAtom),
  shared: get(sharedAtom),
  staticData: get(gameStaticDataAtom),
  suspended: get(suspendedAtom),
  suspending: get(suspendingAtom),
}));

export const store = createStore();

export function resetStore() {
  store.set(gameDataAtom, {});
  store.set(gameStaticDataAtom, {});
  store.set(sharedAtom, {});
}
