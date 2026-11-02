// Display-only labels; mode and research category keys remain unchanged.
const labels: Readonly<Record<string, string>> = {
  Off: '关闭',
  Local: '自身',
  Targeted: '指定目标',
  Area: '区域',
  Relay: '中继',
  Utility: '实用', 'Utility Nanites': '实用纳米机器人',
  Medical: '医疗', 'Medical Nanites': '医疗纳米机器人',
  Augmentation: '强化', 'Augmentation Nanites': '强化纳米机器人',
  Defective: '缺陷',
  Weaponized: '武器化', 'Weaponized Nanites': '武器化纳米机器人',
  Suppression: '抑制', 'Suppression Nanites': '抑制纳米机器人',
  Sensor: '传感', 'Sensor Nanites': '传感纳米机器人',
  Protocols: '协议',
};

export const naniteControlsDisplay = (raw: string): string =>
  Object.hasOwn(labels, raw) ? labels[raw] : raw;
