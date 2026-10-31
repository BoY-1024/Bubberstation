
/obj/item/ammo_box/magazine/ump45
	name = "UMP-45冲锋枪弹匣（.45 ACP）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/smg.dmi'
	icon_state = "ump"
	base_icon_state = "ump"
	ammo_type = /obj/item/ammo_casing/c45acp
	caliber = "45ACP"
	max_ammo = 25
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/ump45/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 25 : 0]"

//obj/item/ammo_box/magazine/ump45/give_manufacturer_examine()
//AddComponent(/datum/component/manufacturer_examine, COMPANY_CANTALAN)

/obj/item/ammo_box/magazine/bastardo9mm
	name = "深渊AKV冲锋枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/smg.dmi'
	icon_state = "vityaz"
	base_icon_state = "vityaz"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/bastardo9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 30 : 0]"

/obj/item/ammo_box/magazine/MP5A
	name = "MP5 A.S.S冲锋枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "mp5"
	base_icon_state = "mp5"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/MP5A/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 30 : 0]"

/obj/item/ammo_box/magazine/uzi9mm
	name = "乌兹冲锋枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/smg.dmi'
	icon_state = "uzi"
	base_icon_state = "uzi"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/uzi9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 30 : 0]"

