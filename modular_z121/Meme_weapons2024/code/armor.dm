/obj/item/clothing/suit/armor/abyss_tech/civ
	name = "深渊II级修身防弹背心"
	desc = "一个看起来很显眼的民用防弹衣"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "press_kevlarvest"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "press_kevlarvest"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST
	equip_sound = 'modular_z121/Meme_weapons2024/sound/armor/equip/armor_use.wav'
	pickup_sound = 'modular_z121/Meme_weapons2024/sound/armor/equip/armor_pickup.wav'
	drop_sound = 'modular_z121/Meme_weapons2024/sound/armor/equip/armor_drop.wav'
	armor_type = /datum/armor/abyss_tech/civ

/datum/armor/abyss_tech/civ
	melee = 10
	bullet = 25
	laser = -10
	energy = -10
	bomb = 5
	fire = 20
	acid = 20
	wound = 10
//obj/item/clothing/suit/armor/vest/civ/give_manufacturer_examine()
//	AddComponent(/datum/component/manufacturer_examine, COMPANY_CANTALAN)

/obj/item/clothing/suit/armor/abyss_tech/medium
	name = "“逃脱者”深渊III+级防弹背心"
	desc = "III+级防弹背心，对大多数伤害提供中等防护。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "armorvest_medium"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "armorvest_medium"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|LEGS
	armor_type = /datum/armor/abyss_tech/medium

/datum/armor/abyss_tech/medium
	melee = 20
	bullet = 35
	laser = 10
	energy = 10
	bomb = 20
	fire = 30
	acid = 30
	wound = 20

/obj/item/clothing/suit/armor/abyss_tech/heavy
	name = "“全面防御”IV级防弹背心"
	desc = "IV级插板防弹背心，对大多数伤害提供中等防护。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "armorvest_heavy"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "armorvest_heavy"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN
	armor_type = /datum/armor/abyss_tech/heavy

/datum/armor/abyss_tech/heavy
	melee = 40
	bullet = 40
	laser = 20
	energy = 20
	bomb = 40
	fire = 50
	acid = 50
	wound = 40

/obj/item/clothing/suit/armor/abyss_tech/ultraheavy
	name = "“公主”V级防弹背心"
	desc = "V级插板防弹背心，护垫覆盖范围大于普通背心。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "armorvest_ultraheavy"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "armorvest_ultraheavy"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	armor_type = /datum/armor/abyss_tech/ultraheavy

/datum/armor/abyss_tech/ultraheavy
	melee = 60
	bullet = 50
	laser = 40
	energy = 30
	bomb = 60
	fire = 70
	acid = 70
	wound = 50

/obj/item/clothing/suit/armor/scavenger/fatpolice
	name = "a6b45 IV级防弹背心"
	desc = "IV级防弹背心，护垫覆盖范围大于普通背心。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "a6b45"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "a6b45"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor_type = /datum/armor/scavenger/fatpolice

/datum/armor/scavenger/fatpolice
	melee = 40
	bullet = 45
	laser = 20
	energy = 30
	bomb = 20
	fire = 50
	acid = 70
	wound = 35

/obj/item/clothing/suit/armor/heavypolice
	name = "警用V级防弹背心"
	desc = "V级防弹背心，护垫覆盖范围大于普通背心。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "heavypolice"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "heavypolice"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS
	armor_type = /datum/armor/heavypolice

/datum/armor/heavypolice
	melee = 45
	bullet = 65
	laser = 30
	energy = 30
	bomb = 20
	fire = 50
	acid = 70
	wound = 35

/obj/item/clothing/suit/armor/longpolice
	name = "“长腿”IV级防弹背心"
	desc = "IV级防弹背心，护垫覆盖范围大于普通背心。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "longpolice"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "longpolice"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor_type = /datum/armor/longpolice

/datum/armor/longpolice
	melee = 45
	bullet = 50
	laser = 25
	energy = 30
	bomb = 20
	fire = 50
	acid = 70
	wound = 35

/obj/item/clothing/suit/armor/abyss_tech/fancycoat
	name = "真男人大衣"
	desc = "让你看起来很威风的大衣。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/suits.dmi'
	icon_state = "fancycoat"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/suit.dmi'
	worn_icon_state = "fancycoat"
	blood_overlay_type = "armor"
	body_parts_covered = CHEST|GROIN|ARMS|LEGS
	armor_type = /datum/armor/abyss_tech/fancycoat

/datum/armor/abyss_tech/fancycoat
	melee = 25
	bullet = 10
	laser = 20
	energy = 30
	bomb = 20
	fire = 25
	acid = 25
	wound = 40
