/obj/item/gun/ballistic/automatic/shotgun/abyss/saiga
	name = "深渊赛加-12自动霰弹枪"
	desc = "神重工业制造的怪模怪样的霰弹枪。"
	base_icon_state = "saiga"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_righthand.dmi'
	inhand_icon_state = "saiga_wielded"
	icon_state = "saiga"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "saiga"
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	accepted_magazine_type = /obj/item/ammo_box/magazine/abyss_shotgun_mag
	weapon_weight = WEAPON_HEAVY
	can_suppress = TRUE
	fire_delay = 2.5
	spread = 2.5
	mag_display = TRUE
	mag_display_ammo = TRUE
	empty_indicator = TRUE
	empty_alarm = TRUE
	tac_reloads = TRUE
	recoil = 2
	burst_size = 1
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/rape_gun.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/autogun_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/autogun_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/autogun_magout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/autogun_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/semigun_cycle.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/autogun_lock_back.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/belador_silenced.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_heavygun.wav'
	w_class = WEIGHT_CLASS_BULKY
	projectile_damage_multiplier = 0.9

//obj/item/gun/ballistic/automatic/shotgun/abyss/give_manufacturer_examine()
//	AddComponent(/datum/component/manufacturer_examine, COMPANY_CANTALAN)

/obj/item/gun/ballistic/automatic/abyss/ump45
	name = "深渊HK UMP-45冲锋枪"
	desc = "可选择三连发模式的全自动冲锋枪，配有螺纹枪管，是将独行者升级为.45 ACP口径的改进型号。"
	base_icon_state = "ump"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/smg_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/smg_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "ump"
	inhand_icon_state = "ump_wielded"
	base_icon_state = "ump"
	icon_state = "ump"
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_lockback.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_rack.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_magout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_magout.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_silenced.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/ump45
	weapon_weight = WEAPON_MEDIUM
	force = 10
	recoil = 0.45
	fire_delay = 1.35
	burst_size = 3
	spread = 0.5
	can_suppress = TRUE
	tac_reloads = TRUE

//obj/item/gun/ballistic/automatic/remis/smg/ump45/give_manufacturer_examine()
//	AddComponent(/datum/component/manufacturer_examine, COMPANY_CANTALAN)

/obj/item/gun/ballistic/shotgun/abyss/spas
	name = "深渊SPAS-12十二号霰弹枪"
	desc = "一把设计厚重、极具代表性的12号霰弹枪。在护木处于前端、保险关闭时，\
	按下开关（鼠标中键）即可切换射击模式。"
	base_icon_state = "spas"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_righthand.dmi'
	icon_state = "spas"
	inhand_icon_state = "spas_wielded"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "spas"
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/spas_lock_back.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/spas_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/spas_cycle.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/spas1.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shell1.wav'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_heavygun.wav'
	load_sound = list(
		'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shell1.wav', \
		'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shell2.wav', \
		'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shell3.wav', \
	)
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	recoil = 0.75
	fire_delay = 2.25
	spread = 2.5
	casing_ejector = TRUE
	semi_auto = TRUE
	internal_magazine = TRUE
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	weapon_weight = WEAPON_HEAVY
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/spas
	projectile_damage_multiplier = 1.1

/obj/item/gun/ballistic/automatic/abyss/bastardo
	name = "深渊AKV冲锋枪"
	desc = "配发给迅驰科技警员和军队的高射速全自动冲锋枪，配有折叠枪托，以及可安装消音器的螺纹枪管。"
	base_icon_state = "vityaz"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/smg_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/smg_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "vityaz"
	inhand_icon_state = "vityaz_wielded"
	icon_state = "vityaz"
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akrack.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/vityaz_silenced.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/vityaz.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/bastardo9mm
	weapon_weight = WEAPON_MEDIUM
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	force = 12
	recoil = 0.55
	fire_delay = 0.85
	burst_size = 3
	spread = 10
	can_suppress = TRUE
	suppressor_x_offset = 6
	projectile_damage_multiplier = 0.8
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/abyss/AN94
	name = "深渊军工AN-94 5.45×39毫米突击步枪"
	desc = "一把神秘的布尔什维克步枪，为红色精锐部队对全自动制式步枪的需求而生。\
		枪口制退器似乎还能兼容消音器！真不错。"
	base_icon_state = "nikonov"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "nikonov"
	inhand_icon_state = "nikonov_wielded"
	icon_state = "nikonov"
	base_icon_state = "nikonov"
	accepted_magazine_type = /obj/item/ammo_box/magazine/a545
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/ak.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/ak_silenced.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akmagout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akrack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 16
	recoil = 0.25
	fire_delay = 0.65
	burst_size = 2
	spread = 2
	can_suppress = TRUE
	w_class = WEIGHT_CLASS_BULKY
	foldable = TRUE
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	tac_reloads = TRUE
//donut gun
/obj/item/gun/ballistic/automatic/abyss/AN94/donut
	name = "深渊军工AN-95 5.45×39毫米金主型突击步枪"
	accepted_magazine_type = /obj/item/ammo_box/magazine/a545/donator
	worn_icon_state = "goldonov"
	inhand_icon_state = "goldonov_wielded"
	icon_state = "goldonov"
	base_icon_state = "goldonov"
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/goldonov.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/goldonov.ogg'

// BERETTA 69R
/obj/item/gun/ballistic/automatic/pistol/abyss/b69r
	name = "深渊伯莱塔69R自动手枪"
	desc = "一群疯狂的意大利人制造的自动手枪，可以三连发。\
		使用9毫米弹药，配有可安装消音器的螺纹枪管。"
	base_icon_state = "b93r"
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock_suppressed1.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magout.ogg'
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_lockback.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "b93r"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "pm9"
	accepted_magazine_type = /obj/item/ammo_box/magazine/beretta9mm
	burst_size = 3
	can_suppress = TRUE
	spread = 5
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_SUITSTORE
	recoil = 0.3
	fire_delay = 1
	spread = 2
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	projectile_damage_multiplier = 0.7
	tac_reloads = TRUE

// STI 2011 COMBAT MASTER
/obj/item/gun/ballistic/pistol/abyss/combatmaster
	name = "深渊STI 2011战斗大师手枪"
	desc = "昂贵可靠的大弹容量手枪。\
			与柯尔特1911非常相似，但改为9毫米口径，并采用聚合物握把和钛合金底把等现代材料。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "combatmaster"
	base_icon_state = "combatmaster"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "five7"
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/combatmaster1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/combatmaster2.ogg')
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/combatmaster_silenced.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockback.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	force = 12
	can_suppress = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/combatmaster9mm
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_SUITSTORE
	tac_reloads = TRUE
	recoil = 0.25
	fire_delay = 1
	spread = 1
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE

/obj/item/gun/ballistic/pistol/abyss/ppk
	name = "\improper PPK .22 LR手枪"
	desc = "瓦尔特PPK是一把可靠、便于隐蔽携带的.22 LR手枪。\
			威力不大，却因一位英国秘密特工的使用而闻名。"
	base_icon_state = "ppk"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "ppk"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "newnambu"
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/walter1.ogg',
					'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/walter2.ogg')
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/walter_silenced.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/ppk22lr
	mag_display = TRUE
	w_class = WEIGHT_CLASS_SMALL
	can_suppress = TRUE
	tac_reloads = TRUE
	recoil = 0.1
	fire_delay = 0.5
	spread = 1
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	tac_reloads = TRUE

// Winter Genocide Nigga Killer-49
/obj/item/gun/ballistic/automatic/abyss/winter
	name = "深渊NK-49突击步枪"
	desc = "“寒冬屠戮”突击步枪，使用5.56毫米弹药。使用者是裁……裁决……裁决者，杀了这个混蛋！"
	base_icon_state = "inverno"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "inverno"
	inhand_icon_state = "inverno_wielded"
	icon_state = "inverno"
	base_icon_state = "inverno"
	accepted_magazine_type = /obj/item/ammo_box/magazine/c556winter
	fire_delay = 1.75
	burst_size = 3
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/niggakiller.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/niggakiller_silenced.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mmagin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mmagin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mmagout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mmagout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mrack.ogg'
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mlockback.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/mlockin.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 14
	can_suppress = TRUE
	weapon_weight = WEAPON_HEAVY
	recoil = 0.6
	spread = 7
	tac_reloads = TRUE
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_SUITSTORE|ITEM_SLOT_BACK|ITEM_SLOT_OCLOTHING
	projectile_damage_multiplier = 1

/obj/item/gun/energy/abyss/nasr
	name = "纳斯尔"
	desc = "原本用于低电压熔胶的手持工业设备，现在靠某个怀有恐怖袭击意图的埃及人的仇恨与赤裸裸的种族主义无线供能。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/energy.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_draw.ogg'
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasr1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasr2.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasr3.ogg')
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	base_icon_state = "nasr"
	slot_flags = ITEM_SLOT_BELT
	inhand_icon_state = "nasr"
	icon_state = "nasr"
	base_icon_state = "nasr"
	cell_type = /obj/item/stock_parts/power_store/cell/mini_egun
	charge_delay = 15
	ammo_type = list(/obj/item/ammo_casing/energy/nasr)
	custom_materials = list(/datum/material/uranium=10000, \
						/datum/material/titanium=75000, \
						/datum/material/glass=5000)
	display_empty = TRUE
	fire_delay = 5
	force = 17
	w_class = WEIGHT_CLASS_NORMAL
	selfcharge = TRUE
	selfcharge = 0.2
	recoil = 0.35

/obj/item/gun/energy/abyss/nasr/process(delta_time)
	if(selfcharge && cell && cell.percent() < 100)
		charge_timer += delta_time
		if(charge_timer < charge_delay)
			return
		charge_timer = 0
		cell.give(500)
		if(!chambered) //if empty chamber we try to charge a new shot
			recharge_newshot(TRUE)
		flick("nasr_reload", src)
		playsound(src, 'modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasrcharge.ogg', 25, FALSE)

/obj/item/gun/ballistic/automatic/abyss/g36
	name = "虚空国际G36 5.56毫米突击步枪"
	desc = "一把看起来有点融化、又有点像巧克力的5.56毫米突击步枪，仿佛搅拌一下就能浇在吐司或海鲜上。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "g36"
	inhand_icon_state = "g36_wielded"
	icon_state = "g36"
	base_icon_state = "g36"
	accepted_magazine_type = /obj/item/ammo_box/magazine/c556g36
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_suppressed.ogg'
	load_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin2.ogg')
	load_empty_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin2.ogg')
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/thump_rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 18
	fire_delay = 1.85
	burst_size = 3
	recoil = 0.75
	spread = 4
	can_suppress = TRUE
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	mag_display_ammo = TRUE
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_SUITSTORE|ITEM_SLOT_OCLOTHING
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/abyss/g36/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 2)

// BENELLI M4 SHOTGUN
/obj/item/gun/ballistic/shotgun/abyss/combatm4
	name = "深渊伯奈利M4霰弹枪"
	desc = "配有战术组件的半自动霰弹枪，下方弹管可容纳6发霰弹，枪膛还可额外装1发。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/40x32.dmi'
	icon_state = "combat"
	base_icon_state = "combat"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "combatshotgun"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_righthand.dmi'
	inhand_icon_state = "combat_wielded"
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/semigun_cycle.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/semigun.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/semigun_silenced.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	can_suppress = TRUE
	fire_delay = 1.5
	spread = 0.5
	recoil = 1.2
	casing_ejector = TRUE
	semi_auto = TRUE
	internal_magazine = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	show_bolt_icon = TRUE
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_SUITSTORE|ITEM_SLOT_OCLOTHING
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/spas
	projectile_damage_multiplier = 0.8

/obj/item/gun/ballistic/automatic/abyss/bolsa
	name = "深渊乌兹冲锋枪"
	desc = "一把古老而紧凑的冲锋枪，许多空间站禁止平民持有。虽然已停产，伸缩枪托和小巧体积仍是它的优势。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/smg_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/smg_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "uzi"
	inhand_icon_state = "uzi_wielded"
	base_icon_state = "uzi"
	icon_state = "uzi"
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_magin.wav'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_magin.wav'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_magout.wav'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_magout.wav'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_rack.wav'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_silenced.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa.ogg'
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_lockback.wav'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/bolsa_lockin.wav'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/uzi9mm
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_BELT|ITEM_SLOT_SUITSTORE|ITEM_SLOT_OCLOTHING
	force = 10
	recoil = 1
	fire_delay = 0.65
	burst_size = 5
	can_suppress = TRUE
	spread = 4
	projectile_damage_multiplier = 0.8
	tac_reloads = TRUE


/obj/item/gun/ballistic/automatic/abyss/hkg11
	name = "深渊G11 4.92×34毫米突击步枪"
	desc = "一把设计近乎科幻、内部结构复杂的步枪。\
	过去曾有传言称神圣罗马帝国正在研制不会留下弹壳的步枪，这把笨重的枪就是他们成功的证明。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/40x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "g11_wielded"
	icon_state = "g11"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "g11"
	base_icon_state = "g11"
	accepted_magazine_type = /obj/item/ammo_box/magazine/a49234g11
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 12
	fire_delay = 0.85
	burst_size = 3
	recoil = 0.45
	spread = 2
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	mag_display_ammo = TRUE
	projectile_damage_multiplier = 0.9
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/abyss/hkg11/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 1.5)

	// BALLS DESTROYER
/obj/item/gun/ballistic/shotgun/abyss/bolas
	name = "深渊“碎蛋者”4号霰弹枪"
	desc = "卧槽，这霰弹枪真他妈大。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	icon_state = "bolas"
	base_icon_state = "bolas"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/shotgun_righthand.dmi'
	inhand_icon_state = "bolas_wielded"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "bolas"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/bolas
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas2.ogg')
	suppressed_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_silenced1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_silenced2.ogg')
	load_sound = list(
		'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_load1.ogg', \
		'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_load2.ogg', \
		'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_load3.ogg', \
	)
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_lock_back.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/bolas_pump.ogg'
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	slot_flags = ITEM_SLOT_BACK
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	can_suppress = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	show_bolt_icon = TRUE
	internal_magazine = TRUE
	recoil = 2
	spread = 2
	rack_delay = 10
	fire_delay = 10

/obj/item/gun/ballistic/shotgun/abyss/bolas/give_gun_safeties()
	return

/obj/item/gun/ballistic/shotgun/contender
	name = "竞争者"
	desc = "猎人之傲制造的单发折管式步枪，拥有出色的精度和制止力，使用.45-70弹药。"
	icon_state = "contender"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "contender"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "contender"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/contender
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/shot.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/winchester_cocked.ogg'
	can_be_sawn_off = TRUE
	sawn_desc= "一把单发手枪，没有准星，很难瞄准。"
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	force = 10
	slot_flags = ITEM_SLOT_BACK
	rack_sound_volume = 10
	bolt_type = BOLT_TYPE_NO_BOLT
	pb_knockback = 3
	recoil = 1
	spread = 0
	internal_magazine = TRUE

/obj/item/gun/ballistic/shotgun/contender/give_gun_safeties()
	return


/obj/item/gun/ballistic/rifle/shotgun/contender/sawn
	name = "锯短竞争者"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	icon_state = "contender_sawn"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "contender_sawn"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	weapon_weight = 1
	recoil = 2.5
	spread = 5

/obj/item/gun/ballistic/automatic/p16
	name = "\improper 深渊P-16突击步枪"
	desc = "职业雇佣兵使用的古老步枪。据说P-16和AK-47注定要在战场上互相对抗。使用5.56毫米弹药。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "p16"
	icon_state = "p16"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "p16"
	base_icon_state = "p16"
	accepted_magazine_type = /obj/item/ammo_box/magazine/p16
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/m16.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 12
	fire_delay = 1.75
	burst_size = 3
	recoil = 0.65
	spread = 5
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK
	mag_display_ammo = TRUE
	projectile_damage_multiplier = 0.9
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/cm16
	name = "\improper CM-16"
	desc = "殖民地民兵的制式步枪。由P-16大幅改装而来，以满足特种作战要求。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/48x32.dmi'
	icon_state = "cm16"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "cm16"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "cm16"
	accepted_magazine_type = /obj/item/ammo_box/magazine/p16
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/m16.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g11rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 12
	fire_delay = 1.65
	burst_size = 3
	recoil = 0.35
	spread = 3
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK
	mag_display_ammo = TRUE
	projectile_damage_multiplier = 1
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/cm16/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 1.5)

/obj/item/gun/ballistic/rifle/boltaction/martini
	name = "\improper 马蒂尼-亨利杠杆式步枪"
	desc = "可装填一发.557/440弹的杠杆式步枪。不论猎物是大象还是异形，都非常适合。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	icon_state = "martini"
	base_icon_state = "martini"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "martini_w"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "martini"
	fire_sound_volume = 100
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/martini.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_silenced.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/martini_open.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/martini_cocked.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	load_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_load1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/bolties/federson_load2.ogg')
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/martini
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	bolt_type = BOLT_TYPE_LOCKING
	rack_delay = 5
	fire_delay = 35
	recoil = 2.5
	spread = 0.5
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_OCLOTHING

/obj/item/gun/ballistic/rifle/boltaction/martini/give_gun_safeties()
	return


/obj/item/gun/ballistic/automatic/abyss/g3
	name = "虚空国际G3 7.62毫米突击步枪"
	desc = "一把看起来有点融化、又有点像巧克力的7.62毫米突击步枪，仿佛搅拌一下就能浇在吐司或海鲜上。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "g3"
	inhand_icon_state = "g3_wielded"
	icon_state = "g3"
	base_icon_state = "g3"
	accepted_magazine_type = /obj/item/ammo_box/magazine/c762g3
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g3_silenced.ogg'
	load_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin2.ogg')
	load_empty_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magin2.ogg')
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g36_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/g3_rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 18
	fire_delay = 3
	burst_size = 3
	recoil = 1
	spread = 8
	can_suppress = TRUE
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	mag_display_ammo = TRUE
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_SUITSTORE|ITEM_SLOT_OCLOTHING
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/abyss/svd
	name = "德拉贡诺夫狙击步枪"
	desc = "别他妈碰我的肉。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "svd"
	inhand_icon_state = "svd_wielded"
	icon_state = "svd"
	base_icon_state = "svd"
	accepted_magazine_type = /obj/item/ammo_box/magazine/svd
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/svd.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/svd_silenced.ogg'
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/svdmagin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/svdmagin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/svdmagout.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/svdmagout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/akrack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_mediumgun.wav'
	force = 18
	fire_delay = 5
	burst_size = 1
	recoil = 2.5
	spread = 2
	can_suppress = TRUE
	w_class = WEIGHT_CLASS_BULKY
	weapon_weight = WEAPON_HEAVY
	mag_display_ammo = TRUE
	slot_flags = ITEM_SLOT_BACK|ITEM_SLOT_SUITSTORE|ITEM_SLOT_OCLOTHING
	tac_reloads = TRUE

/obj/item/gun/ballistic/automatic/abyss/svd/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 3.0)

/obj/item/gun/ballistic/automatic/abyss/vector
	name = "深渊Vector21冲锋枪"
	desc = "这是新纪元科技的玩意儿，我懒得解释。"
	base_icon_state = "v21"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/64x32.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/rifle_righthand.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/worn/back.dmi'
	worn_icon_state = "v21"
	inhand_icon_state = "v21_w"
	icon_state = "v21"
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/hksmg_magout.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/vector_rack.ogg'
	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/vector_silenced.ogg'
	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/vector.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/smg/vector_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	accepted_magazine_type = /obj/item/ammo_box/magazine/glock9mm
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_SUITSTORE | ITEM_SLOT_BACK | ITEM_SLOT_OCLOTHING
	force = 10
	recoil = 1
	fire_delay = 0.5
	burst_size = 3
	spread = 10
	can_suppress = TRUE
	projectile_damage_multiplier = 1
	tac_reloads = TRUE

/obj/item/gun/ballistic/pistol/abyss/Glock18
	name = "深渊格鲁克-18手枪"
	desc = "厚重的手枪，常伴随着暴徒的惨叫。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "glock"
	base_icon_state = "glock"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "glock_bbc"
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock2.ogg')
	suppressed_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock_suppressed1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock_suppressed2.ogg')
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockback.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	force = 12
	can_suppress = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/glock9mm
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_SUITSTORE
	tac_reloads = TRUE
	recoil = 0.45
	fire_delay = 0.65
	spread = 8
	burst_size = 3
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	projectile_damage_multiplier = 0.7
	tac_reloads = TRUE

/obj/item/gun/ballistic/pistol/abyss/Glock21
	name = "深渊格鲁克-21加长手枪"
	desc = "厚重的手枪，常伴随着暴徒的惨叫。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
	icon_state = "glockl"
	base_icon_state = "glockl"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
	inhand_icon_state = "glock_bbc"
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock2.ogg')
	suppressed_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock_suppressed1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/glock_suppressed2.ogg')
	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/aps_magin.ogg'
	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_magin.ogg'
	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockback.ogg'
	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockin.ogg'
	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_rack.ogg'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
	force = 12
	can_suppress = TRUE
	accepted_magazine_type = /obj/item/ammo_box/magazine/glockl45
	w_class = WEIGHT_CLASS_NORMAL
	slot_flags = ITEM_SLOT_SUITSTORE
	tac_reloads = TRUE
	recoil = 0.35
	fire_delay = 1.35
	spread = 5
	burst_size = 1
	show_bolt_icon = TRUE
	bolt_type = BOLT_TYPE_LOCKING
	projectile_damage_multiplier = 1
	tac_reloads = TRUE

//obj/item/gun/ballistic/pistol/abyss/pm9
//	name = "PM9 Homemade Pistol"
//	desc = "What the fuck is this shit?"
//	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/pistol.dmi'
//	icon_state = "pm9"
//	base_icon_state = "pm9"
//	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_lefthand.dmi'
//	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/guns/inhands/pistol_righthand.dmi'
//	inhand_icon_state = "pm9"
//	fire_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9.ogg'
//	suppressed_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9_suppressed.ogg'
//	load_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9_magin.ogg'
//	load_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9_magin.ogg'
//	eject_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9_magin.ogg'
//	eject_empty_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9_magin.ogg'
//	lock_back_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockback.ogg'
//	bolt_drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_lockin.ogg'
//	rack_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pm9_rack.ogg'
//	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/shotgun/shotgun_draw.ogg'
//	equip_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/pistol/pistol_holster.ogg'
//	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/drop_lightgun.wav'
//	force = 10
//	accepted_magazine_type = /obj/item/ammo_box/magazine/pm99mm
//	w_class = WEIGHT_CLASS_NORMAL
//	tac_reloads = TRUE
//	recoil = 0.75
//	fire_delay = 0.9
//	spread = 7.5
//	show_bolt_icon = TRUE
//	bolt_type = BOLT_TYPE_LOCKING
//	projectile_damage_multiplier = 1
//	tac_reloads = TRUE
//	can_suppress = TRUE

//obj/item/gun/ballistic/pistol/abyss/pm9/give_gun_safeties()
//	return

