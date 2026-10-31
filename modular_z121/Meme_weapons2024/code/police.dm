/obj/item/gun/ballistic/rifle/boltaction/M24
	name = "\improper M24 SWS"
	desc = "M24狙击武器系统，供军队或警方使用。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "m24"
	base_icon_state = "m24"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "m24"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "m24"
	fire_sound_volume = 100
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/m14_fire.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_silenced.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_boltin.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_boltout.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	load_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_load1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_load2.ogg')
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/M24
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	bolt_type = BOLT_TYPE_LOCKING
	rack_delay = 2.5
	fire_delay = 5
	recoil = 0.25
	spread = 0.1
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	projectile_damage_multiplier = 2.15
	jamming_chance = 5
	unjam_chance = 50
	can_suppress = TRUE

/obj/item/gun/ballistic/rifle/boltaction/M24/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 4)

/obj/item/gun/ballistic/automatic/MP5A
	name = "MP5 A.S.S冲锋枪"
	desc = "一把烂透了的MP5，真的烂透了。"
	base_icon_state = "mp5"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "mp5"
	inhand_icon_state = "mp5"
	icon_state = "mp5"
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akrack.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_silenced.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/MP5.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/MP5A
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	force = 15
	recoil = 0.25
	fire_delay = 0.85
	burst_size = 1
	spread = 10
	can_suppress = TRUE
	suppressor_x_offset = 0
	projectile_damage_multiplier = 1
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/MP5A/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.12 SECONDS)

/obj/item/gun/ballistic/automatic/AR15
	name = "阿玛莱特15型步枪"
	desc = "一把使用中心发火弹药的轻型导气式半自动步枪。"
	base_icon_state = "ar15"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/rifle.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "ar15"
	inhand_icon_state = "ar15"
	icon_state = "ar15"
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akrack.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/niggakiller_silenced.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/m16.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/AR15
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	force = 15
	recoil = 1
	fire_delay = 5
	burst_size = 1
	spread = 1
	can_suppress = TRUE
	suppressor_x_offset = 18
	suppressor_y_offset = 19
	projectile_damage_multiplier = 1.25
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/BAR
	name = "M1918勃朗宁自动步枪"
	desc = "调酒师，给我来杯喝的。这里的BAR可不只是酒吧。"
	base_icon_state = "bar"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/40x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "bar"
	inhand_icon_state = "bar"
	icon_state = "bar"
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akrack.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/M1918A2.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/BAR
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	force = 15
	recoil = 0.75
	fire_delay = 0.85
	burst_size = 1
	spread = 5
	can_suppress = FALSE
	projectile_damage_multiplier = 1
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/BAR/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)


