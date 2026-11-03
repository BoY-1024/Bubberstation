const categoryNames: Readonly<Record<string, string>> = {
  All: '全部',
  Utility: '实用工具',
  Entity: '实体',
  Sensor: '传感器',
  Math: '数学',
  Unassigned: '未分类',
  String: '字符串',
  List: '列表',
  Action: '动作',
  ID: 'ID 卡权限',
  NTNet: 'NTNet',
  Abstract: '抽象',
  Admin: '管理员',
  BCI: '脑机接口',
};

export function circuitCategoryDisplay(value: string): string {
  return Object.hasOwn(categoryNames, value) ? categoryNames[value] : value;
}
