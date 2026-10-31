//obj/item/ammo_box/magazine/m9mm
//	name = "pistol magazine (9mm)"
//	icon = 'modular_septic/icons/obj/items/ammo/pistol.dmi'
//	icon_state = "ruger9mm"
//	base_icon_state = "ruger9mm"

/obj/item/ammo_box/magazine/beretta9mm
	name = "深渊伯莱塔69R手枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "beretta9mm"
	base_icon_state = "beretta9mm"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 18
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/beretta9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 15 : 0]"

/obj/item/ammo_box/magazine/combatmaster9mm
	name = "深渊STI 2011战斗大师手枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "combat"
	base_icon_state = "combat"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_FULL_EMPTY
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/combatmaster9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 20 : 0]"


/obj/item/ammo_box/magazine/glock9mm
	name = "格洛克-17十七发弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "glock"
	base_icon_state = "glock"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 17
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/glock9mm/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 17 : 0]"

/obj/item/ammo_box/magazine/glockl45
	name = "格洛克-21八发弹匣（.45 ACP）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "glockl"
	base_icon_state = "glockl"
	ammo_type = /obj/item/ammo_casing/c45acp
	caliber = "45ACP"
	max_ammo = 8
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/glockl45/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 8 : 0]"


/obj/item/ammo_box/magazine/ppk22lr
	name = "瓦尔特PPK手枪弹匣（.22 LR）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "ppk22lr"
	base_icon_state = "ppk22lr"
	ammo_type = /obj/item/ammo_casing/lr22
	caliber = ".22lr"
	max_ammo = 9
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/ppk22lr/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[min(round(ammo_count()), 9)]"

//obj/item/ammo_box/magazine/pm9
//	name = "PM9 Evil Magazine (nine milie meter)"
//	icon = 'modular_septic/icons/obj/items/ammo/pistol.dmi'
//	icon_state = "cunny"
//	base_icon_state = "cunny"
//	ammo_type = /obj/item/ammo_casing/c9mm
//	caliber = CALIBER_9MM
//	max_ammo = 25
//	multiple_sprites = AMMO_BOX_ONE_SPRITE
//	drop_sound = 'modular_septic/sound/weapons/plastic_drop.ogg'

//obj/item/ammo_box/magazine/pm9/update_icon_state()
//	. = ..()
//	icon_state = "[base_icon_state]-[ammo_count() ? 25 : 0]"

/obj/item/ammo_box/magazine/HPC9
	name = "高点手枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "HPC9"
	base_icon_state = "HPC9"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 8
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/HPC9/update_icon()
	. = ..()
	icon_state = "HPC9-[!!ammo_count()]"

/obj/item/ammo_box/magazine/sig
	name = "西格P226手枪弹匣（.40 S&W）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "sig"
	base_icon_state = "sig"
	ammo_type = /obj/item/ammo_casing/a40
	caliber = "40S&W"
	max_ammo = 15
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/sig/update_icon()
	. = ..()
	icon_state = "sig-[!!ammo_count()]"

/obj/item/ammo_box/magazine/M1911C
	name = "M1911定制手枪弹匣（.45 ACP）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "M1911"
	base_icon_state = "M1911"
	ammo_type = /obj/item/ammo_casing/c45acp
	caliber = "45APC"
	max_ammo = 12
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/M1911C/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 12 : 0]"

/obj/item/ammo_box/magazine/b92
	name = "伯莱塔92定制手枪弹匣（9毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "b92"
	base_icon_state = "b92"
	ammo_type = /obj/item/ammo_casing/c919mm
	caliber = "c919"
	max_ammo = 15
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/b92/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 15 : 0]"

/obj/item/ammo_box/magazine/AMT
	name = "AMT手枪弹匣（.44马格南）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "AMT"
	base_icon_state = "AMT"
	ammo_type = /obj/item/ammo_casing/M44
	caliber = "44Magnum"
	max_ammo = 7
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'

/obj/item/ammo_box/magazine/AMT/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 7 : 0]"

/obj/item/ammo_box/M44
	name = "弹药盒（.44马格南）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "44box"
	ammo_type = /obj/item/ammo_casing/M44
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/M44/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 30 : 0]"

/obj/item/ammo_box/a308
	name = "弹药盒（.308）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/pistol.dmi'
	icon_state = "308box"
	ammo_type = /obj/item/ammo_casing/a308
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/a308/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 30 : 0]"

