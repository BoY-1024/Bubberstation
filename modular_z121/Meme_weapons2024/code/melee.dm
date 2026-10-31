/obj/item/stopsign
	name = "停车标志牌"
	desc = "一块古董停车标志牌，原本提醒那些脑子不清醒的行人和司机别乱撞乱踩别人。现在它被用来往别人头上砸，直到把人砸死。"
	icon_state = "tricky0"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/melee/bizzare.dmi'
	base_icon_state = "tricky"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/obj/melee/inhands/bizzare_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/obj/melee/inhands/bizzare_righthand.dmi'
	hitsound = list('modular_z121/Meme_weapons2024/sound/weapons/melee/sign1.wav', 'modular_z121/Meme_weapons2024/sound/weapons/melee/sign2.wav')
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/melee/sign_pickup.wav'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/melee/sign_drop.wav'
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = NONE
	resistance_flags = FIRE_PROOF
	exposed_wound_bonus = 15
	wound_bonus = 10
	throwforce = 15
	block_chance = 40
	armour_penetration = 20

/obj/item/stopsign/Initialize(mapload)
	. = ..()
	transform = transform.Translate(0, -8)
	AddComponent(/datum/component/two_handed, force_unwielded = 5, force_wielded = 25, icon_wielded = "[base_icon_state]1")

/obj/item/stopsign/update_icon_state()
	icon_state = "[base_icon_state]0"
	return ..()

/obj/item/storage/belt/sabre/cane
	name = "手杖"
	desc = "一根看起来很可疑的手杖，中间似乎有一道接缝。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/melee/knife.dmi'
	base_icon_state = "sheath"
	icon_state = "sheath"
	worn_icon = null
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = null
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/obj/melee/inhands/knife_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/obj/melee/inhands/knife_righthand.dmi'
	inhand_icon_state = "sheath"

/obj/item/storage/belt/sabre/cane/PopulateContents()
	new /obj/item/melee/sabre/cane(src)
	update_appearance()

/obj/item/storage/belt/sabre/cane/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_BLIND_TOOL, INNATE_TRAIT)

/obj/item/melee/sabre/cane
	name = "杖剑"
	desc = "好吧，显然这是一把剑。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/melee/knife.dmi'
	icon_state = "cane_sword"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/obj/melee/inhands/knife_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/obj/melee/inhands/knife_righthand.dmi'
	inhand_icon_state = "sabre"
	force = 15
	attack_speed = 7
	throwforce = 10
	wound_bonus = 25
	exposed_wound_bonus = 40
	armour_penetration = -15
	block_chance = 25
	attack_verb_continuous = list("攻击", "戳刺", "猛刺", "撕裂", "划伤", "刺穿")
	attack_verb_simple = list("攻击", "戳刺", "猛刺", "撕裂", "划伤", "刺穿")
	w_class = WEIGHT_CLASS_BULKY
	sharpness = SHARP_EDGED
	hitsound = list('modular_z121/Meme_weapons2024/sound/weapons/melee/npc_kill_smash_03.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/melee/npc_kill_smash_02.ogg', 'modular_z121/Meme_weapons2024/sound/weapons/melee/npc_kill_smash_01.ogg')
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/weapons/melee/sign_pickup.wav'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/weapons/melee/sign_drop.wav'
