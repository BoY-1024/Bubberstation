// SAIGA 12
/obj/item/ammo_box/magazine/abyss_shotgun_mag
	name = "\improper 深渊霰弹枪弹匣"
	desc = "供AN-12霰弹枪使用的8发弹匣。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/shotgun.dmi'
	icon_state = "saiga_mag"
	base_icon_state = "saiga_mag"
	ammo_type = /obj/item/ammo_casing/shotgun/buckshot
	caliber = CALIBER_SHOTGUN
	max_ammo = 8
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/abyss_shotgun_mag/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 5 : 0]"
//obj/item/ammo_box/magazine/abyss_shotgun_drum/give_manufacturer_examine()
//	AddComponent(/datum/component/manufacturer_examine, COMPANY_CANTALAN)

