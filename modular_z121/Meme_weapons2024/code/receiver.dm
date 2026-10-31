/obj/item/gun/ballistic/pistol/receiver/hipoint
	name = "\improper 高点9毫米手枪"
	desc = "这他妈是什么烂玩意儿。"
	base_icon_state = "hipoint"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "hipoint"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/walter1.ogg',
					'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/walter2.ogg')
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/walter_silenced.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/HPC9
	mag_display = TRUE
	w_class = WEIGHT_CLASS_SMALL
	can_suppress = TRUE
	tac_reloads = TRUE
	throwforce = 18
	recoil = 0.75
	fire_delay = 3.5
	spread = 2
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE
	unjam_chance = 35
	jamming_increment = 2
	jammed = FALSE
	can_jam = TRUE
	jamming_chance = 25

/obj/item/gun/ballistic/pistol/receiver/SigP320
	name = "\improper 西格P320手枪"
	desc = "我喜欢它。"
	base_icon_state = "sig"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "sig"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/fiveseven.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock_suppressed1.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/sig
	mag_display = TRUE
	w_class = WEIGHT_CLASS_SMALL
	can_suppress = TRUE
	tac_reloads = TRUE
	throwforce = 10
	recoil = 0.55
	fire_delay = 1.5
	spread = 1.25
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE
	unjam_chance = 45
	jamming_increment = 2
	jammed = FALSE
	can_jam = FALSE
	jamming_chance = 10
	// Skin choices are registered by setup_reskins below.

/obj/item/gun/ballistic/pistol/receiver/SigP320/setup_reskins()
	AddComponent(/datum/component/reskinable_item, /datum/atom_skin/z121_sig)

/datum/atom_skin/z121_sig
	abstract_type = /datum/atom_skin/z121_sig

/datum/atom_skin/z121_sig/default
	preview_name = "默认"
	new_icon_state = "sig"

/datum/atom_skin/z121_sig/tan
	preview_name = "沙色"
	new_icon_state = "sigtan"

/obj/item/gun/ballistic/pistol/receiver/M1911C
	name = "\improper M1911定制手枪"
	desc = "可安装配件。"
	base_icon_state = "m1911"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	icon_state = "m1911"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/john1.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/M1911C
	mag_display = TRUE
	w_class = WEIGHT_CLASS_SMALL
	can_suppress = FALSE
	tac_reloads = TRUE
	throwforce = 10
	recoil = 0.35
	fire_delay = 1.15
	spread = 1.25
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE
	unjam_chance = 25
	jamming_increment = 2
	jammed = FALSE
	can_jam = FALSE
	jamming_chance = 15

/obj/item/gun/ballistic/pistol/receiver/b92
	name = "\improper 伯莱塔92定制手枪"
	desc = "经过定制的伯莱塔手枪。"
	base_icon_state = "b92"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	icon_state = "b92"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/john1.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/b92
	mag_display = TRUE
	w_class = WEIGHT_CLASS_SMALL
	can_suppress = FALSE
	tac_reloads = TRUE
	throwforce = 10
	recoil = 0.35
	fire_delay = 1.25
	spread = 1.25
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE
	unjam_chance = 35
	jamming_increment = 2
	jammed = FALSE
	can_jam = FALSE
	jamming_chance = 15

/obj/item/gun/ballistic/pistol/receiver/AMT
	name = "\improper 自动马格南手枪"
	desc = "经过定制的伯莱塔手枪。"
	base_icon_state = "AMT"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	icon_state = "AMT"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/gado2.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/AMT
	w_class = WEIGHT_CLASS_SMALL
	can_suppress = FALSE
	tac_reloads = TRUE
	throwforce = 10
	recoil = 0.85
	fire_delay = 3
	spread = 1.25
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE
	unjam_chance = 15
	jamming_increment = 5
	jammed = FALSE
	can_jam = FALSE
	jamming_chance = 25

/obj/item/gun/ballistic/revolver/M29
	name = "\improper 史密斯威森M29左轮手枪"
	desc = "一把可疑的左轮手枪，使用.44马格南弹。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "police"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "44magnum"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/cylinder/M29
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/gado1.ogg'
	fire_sound_volume = 70
	dry_fire_sound = 'sound/items/weapons/gun/revolver/dry_fire.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	casing_ejector = FALSE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_NO_BOLT
	tac_reloads = FALSE
	recoil = 0.75
	fire_delay = 3
	spread = 1.25
