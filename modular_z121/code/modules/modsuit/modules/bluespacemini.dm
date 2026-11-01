/datum/crafting_recipe/bluespace_mini
	name = "迷你蓝空间储存模块"
	reqs = list(
		/obj/item/mod/module/storage/large_capacity = 1,
		/obj/item/assembly/signaler/anomaly/bluespace = 1,
	)

	result = /obj/item/mod/module/storage/bluespace_mini
	category = CAT_CONTAINERS

/obj/item/mod/module/storage/bluespace_mini
	name = "迷你蓝空间储存模块"
	desc = "纳米传讯开发的储存系统，采用微型蓝空间口袋实现超强的储存能力，不受物品重量影响。\
	注：本模块为适用于空间站的迷你版本，容量有所降低。"
	icon_state = "storage_bluespace"
	storage_type = /datum/storage/mod_storage/syndicate
