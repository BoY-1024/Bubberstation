/obj/item/ammo_casing/a545
	name = "5.45x39mm 廉价弹壳"
	desc = "一种很少见的子弹"
	caliber = "A545"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-steel-surplus"
	base_icon_state = "rifle-steel-surplus"
	projectile_type = /obj/projectile/bullet/a545

/obj/item/ammo_casing/a545/ap
	name = "5.45x39mm 穿甲弹壳"
	desc = "一种很少见的子弹，但是穿甲"
	caliber = "A545"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-steel-ap"
	base_icon_state = "rifle-steel-ap"
	projectile_type = /obj/projectile/bullet/a545/ap

/obj/projectile/bullet/a545
	name = "5.45x39mm 子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 28
	wound_bonus = 5
	exposed_wound_bonus = 25
	speed = 1.5
	armour_penetration = 10
	embed_type = null
	sharpness = SHARP_POINTY

/obj/projectile/bullet/a545/ap
	name = "5.45x39mm 穿甲子弹"
	damage = 26
	wound_bonus = 15
	exposed_wound_bonus = 5
	speed = 1.5
	armour_penetration = 25
	embed_type = null
	sharpness = SHARP_POINTY

/obj/projectile/beam/laser/nasr
	name = "激光"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "laser"
	damage = 50
	light_color = LIGHT_COLOR_BLOOD_MAGIC
	impact_effect_type = /obj/effect/temp_visual/impact_effect/red_laser
	muzzle_type = /obj/effect/projectile/muzzle/laser
	tracer_type = null
	impact_type = null

/obj/item/ammo_casing/energy/nasr
	fire_sound = list('modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasr1.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasr2.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/guns/energy/nasr3.ogg')
	select_name = "熔胶"
	e_cost = 200
	projectile_type = /obj/projectile/beam/laser/nasr

/obj/projectile/bullet/a308
	damage = 32
	wound_bonus = 10
	speed = 1.5
	armour_penetration = 25
	exposed_wound_bonus = -5
	pass_flags = PASSGLASS | PASSGRILLE | PASSMACHINE
	embed_type = null
	sharpness = SHARP_POINTY


/obj/item/ammo_casing/a308
	name = ".308 弹壳"
	desc = "一枚.308弹壳。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-brass-surplus"
	base_icon_state = "rifle-brass-surplus"
	caliber = "a308"
	projectile_type = /obj/projectile/bullet/a308

/obj/item/ammo_casing/a49234g11
	name = "4.92x34无壳弹"
	desc = "超级稀有子弹，如果它被击发，弹壳会自己消失"
	caliber = "CALIBER_UNCONVENTIONAL"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "caseless"
	base_icon_state = "caseless"
	projectile_type = /obj/projectile/bullet/a49234g11

/obj/projectile/bullet/a49234g11
	name = "4.92x34无壳弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 22
	wound_bonus = -10
	exposed_wound_bonus = 15
	speed = 1.2
	armour_penetration = 10
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/shotgun/bolas
	name = "“蹂躏者-3”4号鹿弹"
	desc = "一种4号杀伤鹿弹，唯一用途就是在近距离把软组织彻底轰烂。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "8gauge"
	base_icon_state = "8gauge"
	caliber = "CALIBER_KS23"
	w_class = WEIGHT_CLASS_NORMAL
	pellets = 7
	variance = 15
	projectile_type = /obj/projectile/bullet/pellet/shotgun_bolas/buckshot

/obj/projectile/bullet/pellet/shotgun_bolas/buckshot
	name = "4号霰弹弹丸"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 14
	wound_bonus = 15
	exposed_wound_bonus = 35
	speed = 1
	armour_penetration = 10
	sharpness = SHARP_POINTY
	embed_type = null

/obj/item/ammo_casing/c38/hunting
	name = ".38狩猎弹壳"
	desc = "一枚.38狩猎弹壳。"
	projectile_type = /obj/projectile/bullet/c38/hunting
	caliber = CALIBER_38

/obj/projectile/bullet/c38/hunting //bonus damage to simplemobs
	name = ".38狩猎弹"
	damage = 15
	var/bonus_damage = 55 // if a simplemob then do this much extra

/obj/projectile/bullet/c38/hunting/on_hit(atom/target, blocked = FALSE, pierce_hit)
	if(istype(target, /mob/living/simple_animal/hostile/))
		damage += bonus_damage
	..()

/obj/projectile/bullet/c38/hunting/on_hit(atom/target, blocked = FALSE, pierce_hit)
	if(istype(target, /mob/living/basic/))
		damage += bonus_damage
	..()

/obj/item/ammo_casing/a4570
	name = ".45-70弹壳"
	desc = "一枚.45-70弹壳。"
	caliber = "4570"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-brass"
	base_icon_state = "rifle-brass"
	projectile_type = /obj/projectile/bullet/a4570

/obj/item/ammo_casing/a4570/explosive
	name = ".45-70爆炸弹壳"
	desc = "一枚装有微量炸药的.45-70弹壳。"
	caliber = "4570"
	projectile_type = /obj/projectile/bullet/a4570/explosive

/obj/projectile/bullet/a4570/explosive //for extra oof
	name = ".45-70爆炸弹"

/obj/projectile/bullet/a4570/explosive/on_hit(atom/target, blocked = FALSE, pierce_hit)
	..()
	explosion(target, -1, 0, 1)
	return BULLET_ACT_HIT

/obj/projectile/bullet/a4570
	name = ".45-70子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 45 //it's the old .357
	stamina = 20
	wound_bonus = -15
	exposed_wound_bonus = 20
	speed = 1
	armour_penetration = -5
	embed_type = null

/obj/item/ammo_casing/caseless/c556mmHITP
	name = "5.56毫米HITP无壳弹"
	desc = "一枚烂得不可思议的子弹。"
	caliber = "556mmHITP"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-brass-surplus"
	base_icon_state = "rifle-brass-surplus"
	projectile_type = /obj/projectile/bullet/c556mmHITP

/obj/projectile/bullet/c556mmHITP
	name = "5.56毫米HITP子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 22
	armour_penetration = -10
	speed = 1.4
	wound_bonus = 20
	exposed_wound_bonus = 30
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/c10mmsurplus
	name = "10毫米剩余军用弹壳"
	desc = "又一枚烂得不可思议的子弹？搞什么鬼。"
	caliber = "10mm surplus"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "pistol-steel-surplus"
	base_icon_state = "pistol-steel-surplus"
	projectile_type = /obj/projectile/bullet/c10mmsurplus

/obj/projectile/bullet/c10mmsurplus
	name = "10毫米剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 30
	armour_penetration = -5
	speed = 1
	wound_bonus = -10
	exposed_wound_bonus = 20
	embed_type = null
	sharpness = SHARP_POINTY

/obj/projectile/bullet/lr22
	name = ".22lr"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 15
	stamina = 20
	wound_bonus = -15
	exposed_wound_bonus = 35
	speed = 1.2
	armour_penetration = -30
	embed_type = null

/obj/item/ammo_casing/lr22
	name = ".22 LR弹壳"
	desc = "小子弹"
	caliber = ".22lr"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "pistol-brass-surplus"
	base_icon_state = "pistol-brass-surplus"
	projectile_type = /obj/projectile/bullet/lr22

/obj/item/ammo_casing/c556mmsurplus
	name = "5.56×45毫米剩余军用弹壳"
	desc = "为什么？"
	caliber = "n556"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-brass-surplus"
	base_icon_state = "rifle-brass-surplus"
	projectile_type = /obj/projectile/bullet/c556mmsurplus

/obj/projectile/bullet/c556mmsurplus
	name = "5.56×45毫米剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 24
	armour_penetration = 20
	speed = 1
	wound_bonus = 15
	exposed_wound_bonus = -5
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/a557
	name = ".557/440弹壳"
	desc = "一枚.557/440弹壳。"
	caliber = "557"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "big-brass"
	base_icon_state = "big-brass"
	projectile_type = /obj/projectile/bullet/a557

/obj/projectile/bullet/a557
	name = ".557/440子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 60 //it's the old .357
	stamina = 55
	wound_bonus = 35
	speed = 0.5
	armour_penetration = 25
	embed_type = null
	var/bonus_damage = 55 // if a simplemob then do this much extra
/*
/obj/projectile/bullet/a557/on_hit(atom/target, blocked = FALSE, pierce_hit)
	if(istype(target, /mob/living/simple_animal/hostile/))
		damage += bonus_damage
	..()

/obj/projectile/bullet/a557/on_hit(atom/target, blocked = FALSE, pierce_hit)
	if(istype(target, /mob/living/basic/))
		damage += bonus_damage
	..()
*/

/obj/item/ammo_casing/c45acp
	name = ".45 ACP剩余军用弹壳"
	desc = "为什么？"
	caliber = "45ACP"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "pistol-steel-surplus"
	base_icon_state = "pistol-steel-surplus"
	projectile_type = /obj/projectile/bullet/c45acp

/obj/projectile/bullet/c45acp
	name = ".45 ACP剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 32
	armour_penetration = -5
	speed = 1
	wound_bonus = -10
	exposed_wound_bonus = 30
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/c919mm
	name = "9×19毫米剩余军用弹壳"
	desc = "为什么？"
	caliber = "c919"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "pistol-brass-surplus"
	base_icon_state = "pistol-brass-surplus"
	projectile_type = /obj/projectile/bullet/c919mm

/obj/projectile/bullet/c919mm
	name = "9×19毫米剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 28
	armour_penetration = -15
	speed = 1
	wound_bonus = -15
	exposed_wound_bonus = 25
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/n762mmsurplus
	name = "7.62x51mm NATO 廉价子弹"
	desc = "结束我的痛苦"
	caliber = "n76251"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-steel-surplus"
	base_icon_state = "rifle-steel-surplus"
	projectile_type = /obj/projectile/bullet/n762mmsurplus

/obj/projectile/bullet/n762mmsurplus
	name = "7.62x51mm NATO 子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 33
	armour_penetration = -5
	speed = 1
	wound_bonus = -10
	exposed_wound_bonus = 20
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/n76254mmsurplus
	name = "7.62x54mmR 廉价子弹"
	desc = "痛苦永无止境"
	caliber = "n76254"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-steel-surplus"
	base_icon_state = "rifle-steel-surplus"
	projectile_type = /obj/projectile/bullet/n76254mmsurplus

/obj/projectile/bullet/n76254mmsurplus
	name = "7.62x54mmR 廉价子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 40
	armour_penetration = 5
	speed = 1.5
	wound_bonus = -5
	exposed_wound_bonus = -10
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/r850mm
	name = "8×50毫米R勒贝尔弹"
	desc = "老掉牙了！"
	caliber = "R8×50mmLebel"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-brass-surplus"
	base_icon_state = "rifle-brass-surplus"
	projectile_type = /obj/projectile/bullet/r850mm


/obj/projectile/bullet/r850mm
	name = "8×50毫米R勒贝尔弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 35
	armour_penetration = -25
	speed = 0.9
	wound_bonus = -15
	exposed_wound_bonus = -5
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/a40
	name = ".40 S&W剩余军用弹壳"
	desc = "为什么？"
	caliber = "40S&W"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "pistol-steel-surplus"
	base_icon_state = "pistol-steel-surplus"
	projectile_type = /obj/projectile/bullet/a40

/obj/projectile/bullet/a40
	name = ".40 S&W剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 30
	armour_penetration = -15
	speed = 1
	wound_bonus = -15
	exposed_wound_bonus = 25
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/M44
	name = ".44马格南剩余军用弹壳"
	desc = "为什么？"
	caliber = "44Magnum"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "magnum-steel-surplus"
	base_icon_state = "magnum-steel-surplus"
	projectile_type = /obj/projectile/bullet/M44

/obj/projectile/bullet/M44
	name = ".44马格南剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 40
	armour_penetration = 5
	speed = 1
	wound_bonus = 5
	exposed_wound_bonus = 25
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/c300surplus
	name = ".300 AAC黑障剩余军用弹壳"
	desc = "还是同样的烂玩意儿，只是换了个花哨的钢制弹壳。"
	caliber = "c300"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-steel-surplus"
	base_icon_state = "rifle-steel-surplus"
	projectile_type = /obj/projectile/bullet/c300surplus

/obj/projectile/bullet/c300surplus
	name = ".300 AAC黑障剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 35
	armour_penetration = 20
	speed = 1.5
	wound_bonus = 15
	exposed_wound_bonus = 15
	embed_type = null
	sharpness = SHARP_POINTY

/obj/item/ammo_casing/c3006surplus
	name = ".30-06斯普林菲尔德剩余军用弹壳"
	desc = "还是同样的烂玩意儿，只是换了个花哨的钢制弹壳。"
	caliber = "c3006"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/ammo/casings.dmi'
	icon_state = "rifle-steel-surplus"
	base_icon_state = "rifle-steel-surplus"
	projectile_type = /obj/projectile/bullet/c3006surplus

/obj/projectile/bullet/c3006surplus
	name = ".30-06斯普林菲尔德剩余军用子弹"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/projectiles/energy.dmi'
	icon_state = "tracer"
	damage = 35
	armour_penetration = 10
	speed = 1
	wound_bonus = 15
	exposed_wound_bonus = 15
	embed_type = null
	sharpness = SHARP_POINTY
