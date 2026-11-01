/// Catalog names for the custom crate imports; item names and type paths stay unchanged.
/proc/cargo_crate_item_display(obj/item/item_type)
	var/static/list/display_names = list(
		/obj/item/gun/ballistic/automatic/pistol/sofap = "SOFAP 自动手枪",
		/obj/item/gun/ballistic/automatic/pistol/tac9 = "TAC-9 战斗手枪",
		/obj/item/gun/ballistic/automatic/pistol/c38 = "NT-38 半自动手枪",
		/obj/item/gun/ballistic/revolver/single = "BFR-500 单动左轮手枪",
		/obj/item/gun/ballistic/rifle/rebarxbow/crossbow = "战术十字弩",
		/obj/item/gun/ballistic/automatic/ostrza = "M/SAR-6“刀锋”半自动步枪",
		/obj/item/gun/ballistic/shotgun/aa12 = "AA12 全自动霰弹枪",
		/obj/item/gun/ballistic/automatic/europa = "欧罗巴通用机枪",
		/obj/item/gun/ballistic/rifle/solstice = "“至日”重型狙击步枪",
		/obj/item/gun/energy/photon_sniper = "光子狙击步枪",
		/obj/item/ammo_box/c20nuoli = ".20 箭矢标准弹药箱",
		/obj/item/ammo_box/c20nuoli/smart = ".20 箭矢智能弹药箱",
		/obj/item/ammo_box/c20nuoli/breacher = ".20 箭矢反器材弹药箱",
		/obj/item/ammo_casing/rebar/bolt = "钢制弩箭",
		/obj/item/ammo_box/magazine/tac9/starts_empty = "TAC-9 空弹匣",
		/obj/item/ammo_box/magazine/m38_pistol/starts_empty = "NT-38 空弹匣",
		/obj/item/ammo_box/speedloader/bfr500 = "BFR-500 快速装弹器",
		/obj/item/ammo_box/magazine/aa12/starts_empty = "AA12 空弹匣",
		/obj/item/ammo_box/magazine/aa12/drum/starts_empty = "AA12 空弹鼓",
		/obj/item/ammo_box/magazine/europa/starts_empty = "欧罗巴机枪空弹匣",
		/obj/item/deployable_healer = "应急纳米治疗信标",
		/obj/item/crafting_conversion_kit/paramedic_jaws = "急救液压钳改装套件",
		/obj/item/mod/module/dispenser/popcorn = "模块服爆米花机",
		/obj/item/storage/box/donkpockets/donkpocketliver = "咚克肝味口袋饼",
		/obj/item/storage/box/donkpockets/donkpocketrat = "咚克鼠肉口袋饼",
		/obj/item/storage/box/donkpockets/donkpocketslime = "咚克史莱姆口袋饼",
		/obj/item/storage/box/donkpockets/donkpocketmime = "咚克默剧口袋饼",
		/obj/item/storage/box/caramel_medipen = "焦糖注射笔套装",
		/obj/item/storage/pouch/generic_pouch = "轻便收纳袋",
		/obj/item/storage/pouch/expanded_pouch = "扩容收纳袋",
		/obj/item/storage/pouch/carrying_pouch = "重载收纳袋",
		/obj/item/toy/plush/ghastling = "悠魂宝宝毛绒玩偶",
	)
	return display_names[item_type] || item_type::name

/datum/supply_pack/company_import/crates/New()
	. = ..()
	if(item_type)
		name = cargo_crate_item_display(item_type)
