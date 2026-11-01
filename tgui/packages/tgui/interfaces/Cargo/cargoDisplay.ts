// THIS IS A BUBBER UI FILE

// Display labels only; selection, sorting and actions retain the original keys.
const categories: Readonly<Record<string, string>> = {
  Armory: '军械库',
  'Canisters & Materials': '气罐与材料',
  'Company Imports': '公司进口',
  'Costumes & Toys': '服装与玩具',
  Emergency: '应急物资',
  'Engine Construction': '引擎建设',
  Engineering: '工程',
  'Food & Hydroponics': '食品与水培',
  Goodies: '单件商品',
  Imports: '进口物资',
  Livestock: '活体动物',
  Medical: '医疗',
  'Miscellaneous Supplies': '杂项物资',
  Outsourced: '外包物资',
  Science: '科研',
  Security: '安保',
  Service: '服务',
  'Vending Restocks': '自动售货机补货',
};

const subcategories: Readonly<Record<string, string>> = {
  'Akh Frontier': '阿赫特边疆装备公司',
  'Blacksteel Industries': '黑钢工业',
  Crates: '板条箱',
  'DeForest Medical': '德福雷斯特医疗公司',
  'Donk Co.': '咚克公司',
  'Kahraman Mining Co.': '卡赫拉曼矿业公司',
  'PSC Surplus': '泛斯拉夫联邦剩余物资',
  'Sol Defense': '太阳防务',
  'Vitezstvi Armed Forces': '胜利武装部队',
};

export const cargoCategoryDisplay = (value: string): string =>
  Object.hasOwn(categories, value) ? categories[value] : value || '未分类';

export const cargoSubcategoryDisplay = (value: string): string =>
  Object.hasOwn(subcategories, value) ? subcategories[value] : value || '通用';
