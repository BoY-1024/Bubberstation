/obj/item/clothing/head/helmet/space/hardsuit/ert/rider
	name = "紧急响应部队头盔"
	desc = "紧急响应部队的骑士型指挥头盔，比标准型号具有更强的装甲防护。"
	icon = 'modular_z121/icons/obj/clothing/ertsuiticon.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/humanerthead.dmi'
	icon_state = "hardsuit0-ert_commander"
	hardsuit_type = "ert_commander"

/obj/item/clothing/suit/space/hardsuit/ert/rider
	name = "紧急响应部队太空服"
	desc = "紧急响应部队的骑士型指挥太空服，比标准型号具有更强的装甲防护。"
	icon = 'modular_z121/icons/obj/clothing/ertsuiticon.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/humanertsuit.dmi'
	icon_state = "ert_command"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/rider

	//ERT Security
/obj/item/clothing/head/helmet/space/hardsuit/ert/rider/sec
	desc = "紧急响应部队的骑士型安保头盔，比标准型号具有更强的装甲防护。"
	icon_state = "hardsuit0-ert_security"
	hardsuit_type = "ert_security"

/obj/item/clothing/suit/space/hardsuit/ert/rider/sec
	desc = "紧急响应部队的骑士型安保太空服，比标准型号具有更强的装甲防护。"
	icon_state = "ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/rider/sec

	//ERT Engineering
/obj/item/clothing/head/helmet/space/hardsuit/ert/rider/engi
	desc = "紧急响应部队的骑士型工程头盔，比标准型号具有更强的装甲防护。"
	icon_state = "hardsuit0-ert_engineer"
	hardsuit_type = "ert_engineert"

/obj/item/clothing/suit/space/hardsuit/ert/rider/engi
	desc = "紧急响应部队的骑士型工程太空服，比标准型号具有更强的装甲防护。"
	icon_state = "ert_engineer"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/rider/engi

	//ERT Medical
/obj/item/clothing/head/helmet/space/hardsuit/ert/rider/med
	desc = "紧急响应部队的骑士型医疗头盔，比标准型号具有更强的装甲防护。"
	icon_state = "hardsuit0-ert_medical"
	hardsuit_type = "ert_medical"

/obj/item/clothing/suit/space/hardsuit/ert/rider/med
	desc = "紧急响应部队的骑士型医疗太空服，比标准型号具有更强的装甲防护。"
	icon_state = "ert_medical"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/rider/med



/obj/item/clothing/head/helmet/space/hardsuit/ert
	//. = ..()
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit0-ert_commander-alert"
	inhand_icon_state = "hardsuit0-ert_commander-alert"
	hardsuit_type = "ert_commander-alert"

/obj/item/clothing/suit/space/hardsuit/ert
	//. = ..()
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "ert_command-alert"
	inhand_icon_state = "ert_command-alert"

/obj/item/clothing/head/helmet/space/hardsuit/ert/sec/Initialize()
	. = ..()
	icon_state = "hardsuit0-ert_security-alert"
	inhand_icon_state = "hardsuit0-ert_security-alert"
	hardsuit_type = "ert_security-alert"

/obj/item/clothing/suit/space/hardsuit/ert/sec/Initialize()
	. = ..()
	icon_state = "ert_security-alert"
	inhand_icon_state = "ert_security-alert"

/obj/item/clothing/head/helmet/space/hardsuit/ert/engi/Initialize()
	. = ..()
	icon_state = "hardsuit0-ert_engineer-alert"
	inhand_icon_state = "hardsuit0-ert_engineer-alert"
	hardsuit_type = "ert_engineer-alert"

/obj/item/clothing/suit/space/hardsuit/ert/engi/Initialize()
	. = ..()
	icon_state = "ert_engineer-alert"
	inhand_icon_state = "ert_engineer-alert"

/obj/item/clothing/head/helmet/space/hardsuit/ert/med/Initialize()
	. = ..()
	icon_state = "hardsuit0-ert_medical-alert"
	inhand_icon_state = "hardsuit0-ert_medical-alert"
	hardsuit_type = "ert_medical-alert"

/obj/item/clothing/suit/space/hardsuit/ert/med/Initialize()
	. = ..()
	icon_state = "ert_medical-alert"
	inhand_icon_state = "ert_medical-alert"

/datum/outfit/centcom/ert/commander/rider
	suit = /obj/item/clothing/suit/space/hardsuit/ert/rider

/datum/outfit/centcom/ert/security/rider
	suit = /obj/item/clothing/suit/space/hardsuit/ert/rider/sec

/datum/outfit/centcom/ert/medic/rider
	suit = /obj/item/clothing/suit/space/hardsuit/ert/rider/med

/datum/outfit/centcom/ert/engineer/rider
	suit = /obj/item/clothing/suit/space/hardsuit/ert/rider/engi

/datum/antagonist/ert/security/rider
	outfit = /datum/outfit/centcom/ert/security/rider

/datum/antagonist/ert/engineer/rider
	outfit = /datum/outfit/centcom/ert/engineer/rider

/datum/antagonist/ert/medic/rider
	outfit = /datum/outfit/centcom/ert/medic/rider

/datum/antagonist/ert/commander/rider
	outfit = /datum/outfit/centcom/ert/commander/rider

/datum/ert/red/rider
	leader_role = /datum/antagonist/ert/commander/rider
	roles = list(/datum/antagonist/ert/security/rider, /datum/antagonist/ert/medic/rider, /datum/antagonist/ert/engineer/rider)
	code = "Blue"
