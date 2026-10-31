/obj/item/ammo_box/magazine/c556winter
	name = "寒冬屠戮通用弹匣（5.56毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "inverno"
	base_icon_state = "inverno"
	ammo_type = /obj/item/ammo_casing/c556mmsurplus
	caliber = "n556"
	max_ammo = 35
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/c556winter/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 35 : 0]"

/obj/item/ammo_box/magazine/c556g36
	name = "败者弹匣（5.56毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "g36"
	base_icon_state = "g36"
	ammo_type = /obj/item/ammo_casing/c556mmsurplus
	caliber = "n556"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/c556g36/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[CEILING(ammo_count(), 5)]"

/obj/item/ammo_box/magazine/a545
	name = "深渊平台通用弹匣（5.45×39毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "abrifle"
	base_icon_state = "abrifle"
	ammo_type = /obj/item/ammo_casing/a545
	caliber = "A545"
	max_ammo = 30
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/a545/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 30 : 0]"

/obj/item/ammo_box/magazine/a545/donator
	name = "深渊平台金主型弹匣（5.45×39毫米）"
	icon_state = "gabrifle"
	base_icon_state = "gabrifle"
	ammo_type = /obj/item/ammo_casing/a545
	caliber = "A545"

/obj/item/ammo_box/magazine/a49234g11
	name = "G11弹匣（4.92×34毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "grifle"
	base_icon_state = "grifle"
	ammo_type = /obj/item/ammo_casing/a49234g11
	caliber = "CALIBER_UNCONVENTIONAL"
	max_ammo = 55
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/a49234g11/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 55 : 0]"


/obj/item/ammo_box/advanced/c38
	name = ".38弹药盒"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "38box"
	ammo_type = /obj/item/ammo_casing/c38
	max_ammo = 25

/obj/item/ammo_box/advanced/c38hunting
	name = ".38狩猎弹药盒"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "38huntingbox"
	ammo_type = /obj/item/ammo_casing/c38/hunting
	max_ammo = 25

/obj/item/ammo_box/magazine/p16
	name = "\improper P-16弹匣（5.56毫米）"
	icon_state = "p16_mag"
	ammo_type = /obj/item/ammo_casing/caseless/c556mmHITP
	caliber = "a556"
	max_ammo = 30
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	multiple_sprites = AMMO_BOX_ONE_SPRITE

/obj/item/ammo_box/magazine/p16/update_icon()
	. = ..()
	icon_state = "p16_mag-[!!ammo_count()]"

/obj/item/ammo_box/advanced/c556mmHITP
	name = "5.56毫米HITP弹药盒"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "556mmHITP"
	ammo_type = /obj/item/ammo_casing/caseless/c556mmHITP
	max_ammo = 60

/obj/item/ammo_box/advanced/c10mmsurplus
	name = "10毫米剩余军用弹药盒"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "10mmbox-surplus"
	ammo_type = /obj/item/ammo_casing/c10mmsurplus
	max_ammo = 40

/obj/item/ammo_box/a557
	name = ".557/440弹药盒"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = ".557"
	ammo_type = /obj/item/ammo_casing/a557
	max_ammo = 10

/obj/item/ammo_box/magazine/c762g3
	name = "G3弹匣（7.62毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "g3"
	base_icon_state = "g3"
	ammo_type = /obj/item/ammo_casing/n762mmsurplus
	caliber = "n762"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/c762g3/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 20 : 0]"


/obj/item/ammo_box/magazine/svd
	name = "SVD弹匣（7.62毫米）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "svd"
	base_icon_state = "svd"
	ammo_type = /obj/item/ammo_casing/n76254mmsurplus
	caliber = "n76254"
	max_ammo = 15
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/svd/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 15 : 0]"

//obj/item/ammo_box/magazine/rsc
//	name = "rsc clip (8×50mmR Lebel)"
	//desc = "rsc clip"
	//icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	///icon_state = "rsc"
//	base_icon_state = "rsc"
//	ammo_type = /obj/item/ammo_casing/r850mm
//	max_ammo = 5
//	multiple_sprites = AMMO_BOX_ONE_SPRITE
//	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
//	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

//obj/item/ammo_box/magazine/rsc/update_icon_state()
//	. = ..()
//	icon_state = "[base_icon_state]-[ammo_count() ? 5 : 0]"

/obj/item/ammo_box/magazine/AR15
	name = "AR-15二十发弹匣（.300 AAC）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "ar15"
	base_icon_state = "ar15"
	ammo_type = /obj/item/ammo_casing/c300surplus
	caliber = "c300"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/AR15/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 20 : 0]"

/obj/item/ammo_box/magazine/BAR
	name = "BAR二十发弹匣（.30-06）"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/rifle.dmi'
	icon_state = "bar"
	base_icon_state = "bar"
	ammo_type = /obj/item/ammo_casing/c3006surplus
	caliber = "c3006"
	max_ammo = 20
	multiple_sprites = AMMO_BOX_ONE_SPRITE
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_drop.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/plastic_pickup.ogg'

/obj/item/ammo_box/magazine/BAR/update_icon_state()
	. = ..()
	icon_state = "[base_icon_state]-[ammo_count() ? 20 : 0]"
