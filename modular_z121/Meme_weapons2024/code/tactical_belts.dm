/obj/item/storage/belt/military/abyss_tech
	name = "暗色肩挂携行具"
	desc = "从腰部斜挂至肩膀的携行具，用于存放各种小物品和弹药。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/belts.dmi'
	icon_state = "itobe_belt"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/belt.dmi'
	worn_icon_state = "itobe_belt"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	inhand_icon_state = "itobe_belt"
	color = "#d2d2d2"

/obj/item/storage/belt/military/abyss_tech/agent
	name = "暗色腰挂携行具"
	desc = "带有口袋和拉链的携行具，用于存放子弹、弹匣，有时也放些加速送命的香烟。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/belts.dmi'
	icon_state = "itobe_webbing"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/belt.dmi'
	worn_icon_state = "itobe_webbing"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	inhand_icon_state = "itobe_belt"

/obj/item/storage/bag/amoo
	name = "弹药袋"
	desc = "能放进口袋的弹药袋。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/belts.dmi'
	icon_state = "amoo"
	slot_flags = ITEM_SLOT_POCKETS
	w_class = WEIGHT_CLASS_BULKY
	resistance_flags = FLAMMABLE
	custom_price = PAYCHECK_CREW * 4

/obj/item/storage/bag/amoo/Initialize(mapload)
	. = ..()
	atom_storage.max_specific_storage = WEIGHT_CLASS_NORMAL
	atom_storage.max_total_storage = 18
	atom_storage.max_slots = 18
	atom_storage.numerical_stacking = TRUE
	atom_storage.can_hold = typecacheof(list(/obj/item/ammo_casing))
