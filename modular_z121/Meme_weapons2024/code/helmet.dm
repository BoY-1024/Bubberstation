/obj/item/clothing/head/helmet/abyss_tech
	name = "深渊II级防弹头盔"
	desc = "II级装甲头盔，对大多数伤害提供适度防护，不保护面部。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "helmet"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "helmet"
	equip_sound = 'modular_z121/Meme_weapons2024/sound/armor/equip/helmet_use.wav'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/armor/equip/helmet_pickup.wav'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/armor/equip/helmet_drop.wav'
	resistance_flags = FIRE_PROOF
	body_parts_covered = HEAD
	strip_delay = 20
	flags_inv = FALSE
	armor_type = /datum/armor/abyss_tech/helmet

/datum/armor/abyss_tech/helmet
	melee = 25
	bullet = 30
	laser = 10
	energy = 10
	bomb = 10
	fire = 40
	acid = 40
	wound = 15

/obj/item/clothing/head/helmet/abyss_tech/medium
	name = "“撤离者”深渊III+级防弹头盔"
	desc = "III+级防弹头盔，对大多数伤害提供中等防护，不保护面部。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "helmet_medium"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "helmet_medium"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	body_parts_covered = HEAD
	strip_delay = 40
	flags_inv = FALSE
	armor_type = /datum/armor/abyss_tech/helmet/medium

/datum/armor/abyss_tech/helmet/medium
	melee = 40
	bullet = 40
	laser = 20
	energy = 10
	bomb = 20
	fire = 50
	acid = 50
	wound = 30

/obj/item/clothing/head/helmet/abyss_tech/heavy
	name = "“公牛-5”深渊IV级重型防弹头盔"
	desc = "IV级重型装甲头盔，对大多数伤害提供中等防护。两侧设有支架，可安装面罩保护面部。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "helmet_heavy"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "helmet_heavy"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	body_parts_covered = HEAD
	strip_delay = 60
	flags_inv = FALSE
	armor_type = /datum/armor/abyss_tech/helmet/heavy

/datum/armor/abyss_tech/helmet/heavy
	melee = 50
	bullet = 50
	laser = 40
	energy = 30
	bomb = 40
	fire = 70
	acid = 70
	wound = 50

/obj/item/clothing/head/helmet/abyss_tech/heavy/visor
	desc = "深渊IV级重型装甲头盔，对大多数伤害提供中等防护。附带面罩，可为面部提供防弹保护。"
	icon_state = "helmet_heavy_visor"
	worn_icon_state = "helmet_heavy_visor"
	body_parts_covered = HEAD
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDESNOUT
	armor_type = /datum/armor/abyss_tech/helmet/heavy

/obj/item/clothing/head/helmet/abyss_tech/crackhead
	name = "“瘾君子”深渊V级重型防弹头盔"
	desc = "V级重型装甲头盔，专门抵御弹道威胁，但款式古老、异常沉重，戴着很不舒服。常被弄不到正规装备的ITOBE列兵使用，\
	因此得到了“瘾君子”这个俚语绰号。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "helmet_heavy_face"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "helmet_heavy_face"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	body_parts_covered = HEAD
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	strip_delay = 90
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDESNOUT|HIDEHAIR
	armor_type = /datum/armor/abyss_tech/helmet/crackhead

/datum/armor/abyss_tech/helmet/crackhead
	melee = 60
	bullet = 65
	laser = 50
	energy = 30
	bio = 20
	bomb = 50
	fire = 80
	acid = 80
	wound = 60

/obj/item/clothing/head/helmet/police/swat
	name = "“特警”IV级重型防弹头盔"
	desc = "IV级重型装甲头盔，对大多数伤害提供中等防护。两侧设有支架，可安装面罩保护面部。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "swat"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "swat"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	body_parts_covered = HEAD
	strip_delay = 60
	flags_inv = HIDEEARS|HIDEHAIR
	armor_type = /datum/armor/police/helmet/swat

/datum/armor/police/helmet/swat
	melee = 55
	bullet = 55
	laser = 45
	energy = 30
	bomb = 65
	fire = 70
	acid = 70
	wound = 40

/obj/item/clothing/head/helmet/police/lwh
	name = "LWH IV级重型防弹头盔"
	desc = "IV级重型装甲头盔，对大多数伤害提供中等防护。两侧设有支架，可安装面罩保护面部。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "lwh_black"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "lwh_black"
	resistance_flags = FIRE_PROOF | ACID_PROOF
	body_parts_covered = HEAD
	strip_delay = 60
	flags_inv = HIDEEARS|HIDEHAIR
	armor_type = /datum/armor/police/helmet/swat

/datum/armor/police/helmet/swat
	melee = 55
	bullet = 55
	laser = 45
	energy = 30
	bomb = 65
	fire = 70
	acid = 70
	wound = 40

/obj/item/clothing/head/hats/hatt
	name = "“潮范”帽"
	desc = "看着不错，对吧？"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/hats.dmi'
	icon_state = "hatt"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/head.dmi'
	worn_icon_state = "hatt"
	body_parts_covered = HEAD
	strip_delay = 40
	armor_type = /datum/armor/hats_hatt

/datum/armor/hats_hatt
	melee = 10
	bullet = 5
	laser = 5
	energy = 30
	bomb = 0
	fire = 15
	acid = 15
	wound = 10
