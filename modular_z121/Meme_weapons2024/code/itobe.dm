/obj/item/clothing/under/abyss_tech
	name = "\proper 暗色作战服"
	desc = "内衬轻型防弹垫的作战服，剪裁兼顾活动自由和行动时的安静。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/clothing/itobe.dmi'
	icon_state = "soldat"
	worn_icon = 'modular_z121/Meme_weapons2024/icons/mob/clothing/itobe.dmi'
	worn_icon_state = "soldat"
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	inhand_icon_state = "soldat"
	can_adjust = FALSE
	armor_type = /datum/armor/abyss_tech/under

/datum/armor/abyss_tech/under
	melee = 10
	bullet = 10
	laser = 0
	energy = 0
	bio = 10
	bomb = 0
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/under/abyss_tech/agent
	name = "\proper 暗色三件套西装"
	desc = "一套透着不祥气息的西装，红领带已经系好固定在上面。你竟然能在不弄乱这份讲究的情况下穿上它。"
	icon_state = "agent"
	worn_icon_state = "agent"
	inhand_icon_state = "agent"
	can_adjust = FALSE
	armor_type = /datum/armor/abyss_tech/under/agent

/datum/armor/abyss_tech/under/agent
	melee = 10
	bullet = 0
	laser = 0
	energy = 0
	bio = 5
	bomb = 0
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/under/abyss_tech/engineer
	name = "\proper 暗色工装连身服"
	desc = "沾满油污的连身服配有厚外套，可以在寒冷环境中长时间活动。由ITOBE工程师使用。"
	icon_state = "engineer"
	worn_icon_state = "engineer"
	inhand_icon_state = "engineer"
	can_adjust = FALSE
	armor_type = /datum/armor/abyss_tech/under/engineer

/datum/armor/abyss_tech/under/engineer
	melee = 10
	bullet = 5
	laser = 0
	energy = 0
	bio = 25
	bomb = 10
	fire = 75
	acid = 75
	wound = 15

