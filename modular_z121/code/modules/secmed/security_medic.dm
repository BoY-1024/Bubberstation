/*
#define JOB_DISPLAY_ORDER_SECURITY_MEDIC 402

/datum/job/brig_physician
	title = JOB_BRIG_PHYSICIAN
	description = "Patch up officers and prisoners, realize you don't have the tools to Tend Wounds, barge into Medbay and tell them how to do their jobs"
	auto_deadmin_role_flags = DEADMIN_POSITION_SECURITY
	//department_head = list(JOB_HEAD_OF_SECURITY)
	faction = FACTION_STATION
	total_positions = 2
	spawn_positions = 2
	supervisors = SUPERVISOR_HOS
	minimal_player_age = 7
	exp_requirements = 120
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_MEDICAL
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "BRIG_PHYSICIAN"

	outfit = /datum/outfit/job/brig_physician
	plasmaman_outfit = /datum/outfit/plasmaman/security

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SEC

	liver_traits = list(TRAIT_LAW_ENFORCEMENT_METABOLISM)

	display_order = JOB_DISPLAY_ORDER_SECURITY_MEDIC
	bounty_types = CIV_JOB_SEC
	departments_list = list(
		/datum/job_department/security,
		/datum/job_department/medical,
	)

	family_heirlooms = list(/obj/item/clothing/neck/stethoscope, /obj/item/book/manual/wiki/security_space_law)

	//This is the paramedic goodie list. Secmedics are paramedics more or less so they can use these instead of raiding medbay.
	mail_goodies = list(
		/obj/item/reagent_containers/hypospray/medipen = 20,
		/obj/item/reagent_containers/hypospray/medipen/oxandrolone = 10,
		/obj/item/reagent_containers/hypospray/medipen/salacid = 10,
		/obj/item/reagent_containers/hypospray/medipen/salbutamol = 10,
		/obj/item/reagent_containers/hypospray/medipen/penacid = 10,
		/obj/effect/spawner/random/medical/organs = 5,
		/obj/item/reagent_containers/cup/beaker/organ_jar/brain_in_a_jar = 5,
		/obj/item/reagent_containers/hypospray/medipen/survival/luxury = 5
	)
	rpg_title = "Battle Cleric"
	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS | JOB_CAN_BE_INTERN

/datum/outfit/job/brig_physician
	name = "Brig Physician"
	jobtype = /datum/job/brig_physician

	belt = /obj/item/storage/belt/medical/paramedic
	ears = /obj/item/radio/headset/headset_medsec
	uniform = /obj/item/clothing/under/rank/security/peacekeeper/security_medic
	gloves = /obj/item/clothing/gloves/latex/nitrile
	shoes = /obj/item/clothing/shoes/jackboots/sec
	l_pocket = /obj/item/modular_computer/pda/crew/security
	r_pocket = /obj/item/storage/box/bandages
	glasses = /obj/item/clothing/glasses/hud/medsechud/brig_physician
	suit = /obj/item/clothing/suit/armor/vest/peacekeeper/security_medic
	l_hand = /obj/item/storage/medkit/brute
	head = /obj/item/clothing/head/beret/sec/peacekeeper/security_medic
	suit_store = /obj/item/gun/energy/e_gun/advtaser
	backpack = /obj/item/storage/backpack/security
	satchel = /obj/item/storage/backpack/satchel/sec
	duffelbag = /obj/item/storage/backpack/duffelbag/sec

	box = /obj/item/storage/box/survival/security
	chameleon_extras = /obj/item/gun/syringe
	pda_slot = ITEM_SLOT_LPOCKET

	implants = list(/obj/item/implant/mindshield)

	id_trim = /datum/id_trim/job/brig_physician

/obj/effect/landmark/start/security_officer/Initialize(mapload)
	. = ..()
	new /obj/effect/landmark/start/security_medic(get_turf(src))

/obj/effect/landmark/start/security_medic
	name = "Brig Physician"
	icon_state = "Brig Physician"
	icon = 'modular_skyrat/master_files/icons/mob/landmarks.dmi'

/obj/item/encryptionkey/headset_medsec
	name = "medical-security encryption key"
	icon_state = "sec_cypherkey"
	channels = list(RADIO_CHANNEL_MEDICAL = 1, RADIO_CHANNEL_SECURITY = 1)

/obj/item/radio/headset/headset_medsec
	name = "security medic's bowman headset"
	desc = "Used to hear how many security officers need to be stitched back together."
	icon = 'modular_z121/icons/obj/secmed_equipment.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/ears.dmi'
	icon_state = "headset"
	keyslot = new /obj/item/encryptionkey/headset_medsec
	alternate_worn_layer = FACEMASK_LAYER + 0.5
	subspace_transmission = TRUE
	radio_talk_sound = 'modular_skyrat/modules/radiosound/sound/radio/security.ogg'

/obj/item/radio/headset/headset_medsec/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/wearertargeting/earprotection, list(ITEM_SLOT_EARS))

obj/item/clothing/glasses/hud/medsechud/brig_physician
	icon = 'modular_z121/icons/obj/clothing/glasses.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/eyes.dmi'
	icon_state = "security_hud"
	inhand_icon_state = "trayson-t-ray"
	glass_colour_type = /datum/client_colour/glass_colour/blue

//Security
/datum/job/brig_physician
	banned_quirks = list(SEC_RESTRICTED_QUIRKS)
	species_blacklist = list(SPECIES_ABDUCTORWEAK = TRUE)
	//required_languages = list(/datum/language/common = LANGUAGE_SPOKEN)


*/
