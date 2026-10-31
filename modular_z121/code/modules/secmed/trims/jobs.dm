// Our exclusive jobs

/datum/job/brig_physician
	alt_titles = list(
		"Brig Physician",
		"Field Medic",
		"Security Corpsman",
		"Security Medic",
		"Combat Medic",
		"Special Operations Medic",
	)

/datum/id_trim/job/medical_doctor/New()
	. = ..()
	extra_access += list(
		ACCESS_MORGUE_SECURE,
	)

/datum/id_trim/job/quartermaster/New()
	. = ..()
	minimal_access += list(
		ACCESS_WEAPONS,
	)

/datum/id_trim/job/brig_physician
	assignment = "Brig Physician"
	trim_icon = 'icons/obj/card.dmi'
	trim_state = "trim_medicaldoctor"
	department_color = COLOR_SECURITY_RED
	subdepartment_color = COLOR_SECURITY_RED
	sechud_icon_state = SECHUD_SYNDICATE_INTERDYNE
	extra_access = list(ACCESS_DETECTIVE)
	minimal_access = list(
		ACCESS_SECURITY,
		ACCESS_BRIG_ENTRANCE,
		ACCESS_BRIG,
		ACCESS_COURT,
		ACCESS_WEAPONS,
		ACCESS_MECH_SECURITY,
		ACCESS_MINERAL_STOREROOM,
		ACCESS_MAINT_TUNNELS,
		ACCESS_MEDICAL,
		ACCESS_SURGERY,
		ACCESS_MORGUE,
		)
	template_access = list(
		ACCESS_CAPTAIN,
		ACCESS_HOS,
		ACCESS_CHANGE_IDS,
		)

/datum/id_trim/job/brig_physician/New()
	. = ..()

	// Config check for if sec has maint access.
	if(CONFIG_GET(flag/security_has_maint_access))
		access |= list(ACCESS_MAINT_TUNNELS)
