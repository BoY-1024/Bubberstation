/obj/item/clothing/head/utility/welding/engineer
	name = "战斗工程师焊接头盔"
	desc = "头戴式面罩，能完全保护佩戴者免受太空电弧灼伤。战斗工程师专用。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/mask.dmi'
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/mask.dmi'
	icon_state = "engineer"
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	inhand_icon_state = "engineermask"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	custom_materials = list(/datum/material/iron=1750, /datum/material/glass=400)
	flash_protect = FLASH_PROTECTION_WELDER
	tint = 2
	armor_type = /datum/armor/utility_welding
	flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDESNOUT
	actions_types = list(/datum/action/item_action/toggle)
	visor_flags_inv = HIDEMASK|HIDEEARS|HIDEEYES|HIDEFACE|HIDESNOUT
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	resistance_flags = FIRE_PROOF
	clothing_flags = SNUG_FIT | STACKABLE_HELMET_EXEMPT
	armor_type = /datum/armor/welding/engineer

/datum/armor/welding/engineer
	melee = 40
	bullet = 25
	laser = 10
	energy = 0
	bomb = 5
	bio = 10
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/head/utility/welding/engineer/visor_toggling()
	. = ..()
	inhand_icon_state = "[initial(inhand_icon_state)][up ? "off" : ""]"

//obj/item/clothing/head/utility/welding/engineer/give_manufacturer_examine()
//	AddComponent(/datum/component/manufacturer_examine, COMPANY_CANTALAN)

/obj/item/clothing/mask/gas/ordinator
	name = "裁决者铁面具"
	desc = "裁决者的制式铁面具。防护较轻，但很吓人。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/mask.dmi'
	icon_state = "ordinator_mask"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/mask.dmi'
	worn_icon_state = "ordinator_mask"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	inhand_icon_state = "ordinator_mask"
	body_parts_covered = HEAD
	clothing_flags = BLOCK_GAS_SMOKE_EFFECT | MASKINTERNALS
	flags_inv = HIDEFACIALHAIR | HIDEFACE | HIDESNOUT | HIDEHAIR
	visor_flags = BLOCK_GAS_SMOKE_EFFECT | MASKINTERNALS
	visor_flags_inv = HIDEFACIALHAIR | HIDEFACE | HIDESNOUT
	flags_cover = MASKCOVERSMOUTH | MASKCOVERSEYES | PEPPERPROOF
	visor_flags_cover = MASKCOVERSMOUTH | MASKCOVERSEYES | PEPPERPROOF
	// Armor values are supplied by armor_type below.
	custom_materials = list(/datum/material/iron = 150, /datum/material/plastic = 250)
	w_class = WEIGHT_CLASS_SMALL
	armor_type = /datum/armor/mask/ordinator

/datum/armor/mask/ordinator
	melee = 10
	bullet = 0
	laser = 0
	energy = 0
	bomb = 0
	bio = 0
	fire = 50
	acid = 50
	wound = 0

/obj/item/clothing/mask/gas/ordinator/coordinator
	name = "协调者金面具"
	desc = "镇上第二伟大的小丑佩戴的装甲金面具，散发着香蕉味。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/mask.dmi'
	icon_state = "coordinator_mask"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/mask.dmi'
	worn_icon_state = "coordinator_mask"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	inhand_icon_state = "coordinator_mask"
	armor_type = /datum/armor/mask/ordinator
	custom_materials = list(/datum/material/gold = 100, /datum/material/iron = 150, /datum/material/plastic = 250)
