/*
#define SPECIES_SHADOWKIN "shadowkin"
#define isshadekin(A) (is_species(A, /datum/species/shadowkin))
#define BLOOD_TYPE_SHADOWKIN "Hc+"
#define LANGUAGE_IMPLANT "implant"
#define BODYPART_ICON_SHADOWKIN 'modular_z121/icons/mob/sprite_accessory/shadowkin/shadekin_parts_greyscale.dmi'
#define TECHWEB_NODE_EMPATHY_IMPLANT "empathy_implant"

///Shadekin///

/mob/living/carbon/human/species/shadowkin
	race = /datum/species/shadowkin

/datum/species/shadowkin
	name = "Shadowkin"
	id = SPECIES_SHADOWKIN
	mutanttongue = /obj/item/organ/tongue/shadekin/shadowkin
	mutantears = /obj/item/organ/ears/shadekin
	mutantbrain = /obj/item/organ/brain/shadekin
	mutanteyes = /obj/item/organ/eyes/night_vision/ashwalker/shadowkin
	meat = /obj/item/food/meat/slab/human/mutant/shadekin
	skinned_type = /obj/item/stack/sheet/animalhide/shadekin
	exotic_bloodtype = /datum/blood_type/haemocyanin/shadekin
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	payday_modifier = 1.0
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	digitigrade_customization = DIGITIGRADE_OPTIONAL
	species_language_holder = /datum/language_holder/shadekin
	language_prefs_whitelist = list(/datum/language/marish/empathy = TRUE)
	coldmod = 0.5
	heatmod = 2.5
	inherent_traits = list(
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CAN_STRIP,
		TRAIT_LITERATE,
		TRAIT_WATER_BREATHING,
		TRAIT_SLICK_SKIN,
		TRAIT_MUTANT_COLORS,
		TRAIT_NIGHT_VISION,
		TRAIT_NOBREATH,
	)
	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/mutant/shadekin,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/mutant/shadekin,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/mutant/shadowkin,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/mutant/shadowkin,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/mutant/shadowkin,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/mutant/shadowkin,
	)

/datum/species/shadowkin/get_default_mutant_bodyparts()
	return list(
		FEATURE_TAIL = MUTPART_BLUEPRINT("Shade", is_randomizable = TRUE),
		FEATURE_SNOUT = MUTPART_BLUEPRINT(SPRITE_ACCESSORY_NONE, is_randomizable = FALSE),
		FEATURE_EARS = MUTPART_BLUEPRINT("Shade Ears", is_randomizable = TRUE),
		FEATURE_LEGS = MUTPART_BLUEPRINT(NORMAL_LEGS, is_randomizable = TRUE, is_feature = TRUE),
	)

/datum/species/shadowkin/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "heart",
			SPECIES_PERK_NAME = "Empathy",
			SPECIES_PERK_DESC = "Shadowkin possess a remarkable ability that enables them to convey their thoughts to their fellow members without the use of radio communication.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
			SPECIES_PERK_ICON = "paw",
			SPECIES_PERK_NAME = "Unusual species",
			SPECIES_PERK_DESC = "It is unclear when exactly Shadowkin first spawned, though it is assumedly a relatively recent development.  \
				They formed in dark and abandoned places where they are not witnessed-- observation would dispel their creation",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "assistive-listening-systems",
			SPECIES_PERK_NAME = "Sensitive Hearing",
			SPECIES_PERK_DESC = "Shadowkin are more sensitive to loud sounds, such as flashbangs.Excessive noise will scare them and cause permanent damage to their hearing.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "briefcase-medical",
			SPECIES_PERK_NAME = "Extremely vulnerable",
			SPECIES_PERK_DESC = "Shadowkin's skin is as thin as paper, and their bones are as brittle as glass!",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
			SPECIES_PERK_ICON = "lightbulb",
			SPECIES_PERK_NAME = "Dark Regeneration",
			SPECIES_PERK_DESC = "Shadekins regenerate their physical wounds while in the darkness.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = "crutch",
			SPECIES_PERK_NAME = "Light Averse",
			SPECIES_PERK_DESC = "Shadekins move slightly slower while in the light.",
		),
		list(
			SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
			SPECIES_PERK_ICON = FA_ICON_NOTES_MEDICAL,
			SPECIES_PERK_NAME = "Flammable",
			SPECIES_PERK_DESC = "Shadowkin is more susceptible to being harmed by laser-type weapons.",
		),
	)
	return to_add


/datum/species/shadowkin/randomize_features()
	var/list/features = ..()
	var/main_color
	var/secondary_color
	var/tertiary_color
	var/random = rand(1, 4)
	switch(random)
		if(1)
			main_color = "#202020"
			secondary_color = "#505050"
			tertiary_color = "#3f3f3f"
		if(2)
			main_color = "#CF3565"
			secondary_color = "#d93554"
			tertiary_color = "#fbc2dd"
		if(3)
			main_color = "#FFC44D"
			secondary_color = "#FFE85F"
			tertiary_color = "#FFF9D6"
		if(4)
			main_color = "#DB35DE"
			secondary_color = "#BE3AFE"
			tertiary_color = "#F5E2EE"
	features["mcolor"] = main_color
	features["mcolor2"] = secondary_color
	features["mcolor3"] = tertiary_color
	return features

/datum/species/shadowkin/randomize_features()
	var/list/features = ..()
	var/main_color
	var/secondary_color
	var/tertiary_color
	var/random = rand(1, 4)
	switch(random)
		if(1)
			main_color = "#202020"
			secondary_color = "#505050"
			tertiary_color = "#3f3f3f"
		if(2)
			main_color = "#CF3565"
			secondary_color = "#d93554"
			tertiary_color = "#fbc2dd"
		if(3)
			main_color = "#FFC44D"
			secondary_color = "#FFE85F"
			tertiary_color = "#FFF9D6"
		if(4)
			main_color = "#DB35DE"
			secondary_color = "#BE3AFE"
			tertiary_color = "#F5E2EE"
	features["mcolor"] = main_color
	features["mcolor2"] = secondary_color
	features["mcolor3"] = tertiary_color
	return features

/datum/species/shadowkin/prepare_human_for_preview(mob/living/carbon/human/shadowkin)
	var/main_color = "#FFFFFF"
	var/secondary_color = "#FFFFFF"
	var/tertiary_color = "#FFFFFF"
	shadowkin.dna.features[FEATURE_MUTANT_COLOR] = main_color
	shadowkin.dna.features[FEATURE_MUTANT_COLOR_TWO] = secondary_color
	shadowkin.dna.features[FEATURE_MUTANT_COLOR_THREE] = tertiary_color
	shadowkin.dna.mutant_bodyparts[FEATURE_EARS] = build_mutant_part("Shade Ears", list(main_color, secondary_color, tertiary_color))
	shadowkin.dna.mutant_bodyparts[FEATURE_SNOUT] = build_mutant_part(SPRITE_ACCESSORY_NONE, list(main_color, secondary_color, tertiary_color))
	shadowkin.dna.mutant_bodyparts[FEATURE_TAIL] = build_mutant_part("Shade", list(main_color, secondary_color, tertiary_color))
	shadowkin.set_eye_color("#A11B1B")
	regenerate_organs(shadowkin, src, visual_only = TRUE)
	shadowkin.update_body(TRUE)

/datum/species/shadowkin/get_species_description()
	return list(
		"Shadowkin first came about like dust bunnies that collect under a bed, of the collective consciousness \
		Shadowkin and Shadekin originally had the same origin, but due to their different physical forms, they took different paths. ",
		"Shadowkin do not respirate, and their bodies are reformed in the darkness, although frail.",
	)

/datum/species/shadowkin/get_species_lore()
	return list(

		"Shadowkin is a subspecies of Shadekin.the Shadowkin are more primitive compared to the Shadekin, \
		which has led to them often being regarded as a more savage version of the Shadekin.Due to its mutated color,it is widely shunned by its own kind. \
		The collective consciousness of the Shadowkin has encountered strong resistance. They were rejected by the collective consciousness of the Shadekin.  \
		Therefore, in many places, shadowkin are equipped with restraining devices to prevent them from entering the collective consciousness of Shadekin.\
		However, due to its varied colors, it was greatly favored by other races and thus became widely prevalent in other star systems.",

		"It is unclear when exactly Shadekin first spawned, though it is assumedly a relatively recent development. \
		They formed in dark and abandoned places where they are not witnessed-- observation would dispel their creation. \
		When the process completed, the Shadekin collected its ability to move its limbs and communicate from surrounding minds \
		and finally, it formed its first thought, the realization that it is alive.",

		"Shadekin are pitch darkness given form. Light seems to pass through their bodies, which tires them. They do not cast shadows. \
		Shadekin elude definition in terms of size and appearance, as no two Shadekin are the same-- they tend to take features from the species around them \
		that would otherwise not be seen as theirs. For example, Shadekin spawned in Tizira tend to have horns or frill-like ears. \
		An average Shadekin would be slightly shorter than a human, with a similar lifespan. Shadekin that do not use other species' naming conventions will \
		tend to name themselves after their place in the community, like a job or societal function.",

		"Shadekin are capable of reproducing sexually, though their minds need diverse surroundings to properly develop, making them fairly self-guided. \
		Despite this, Shadekin easily find a space of their own, and become staples of their communities. They are more expressive than other species to compensate for a lack of psionic connection. \
		Their language, Marish, is purely empathic and cannot be spoken by psychopaths. Their eye color is an important part of their biology, as it indicates temperament.",

		"A Shadekin is never truly alone, however, as Shadekin have formed in number on the treacherous moon Neoma, due to its darkness and isolation. \
		While there is no central Shadekin government, this is the closest thing Shadekin have to a homeworld, devoid of light due to its orbit around Lusine, an extremely hot world that keeps Neoma's surface approaching habitable. \
		It has become a notable tourist attraction in the few habitable areas. Neoma serves an important function of containing the collective knowledge of Shadekin society and its covens.",

		"Covens are groups of Shadekin formed to maintain themselves and records of their existence, as well as guide new Shadekin as they develop. \
		They are rarely associated with ideology alone, rather concepts and what they imply, and within a coven exist Coteries, interest groups within a coven, tailored to a specific aspect. \
		In this regard, covens are societies in and of themselves, organized in a somewhat tribal manner. Covens do not solely exist on Neoma, they are spread throughout the universe, \
		but most covens at least have archives on the moon, called \"Mindtrusts\".",
	)

///Research&Medicine///

///Blood///

/datum/blood_type/haemocyanin/shadekin
	name = BLOOD_TYPE_SHADOWKIN
	desc = "This oxygen-carrying macromolecule is formed using copper instead of iron (giving it its blue color), and has similar efficiency to haemoglobin in colder temperatures."
	dna_string = "Shadowkin DNA"
	color = "#3399FF"

///Experiments scan shadekin///

//scan shadekin///

/datum/experiment/scanning/people/open_minds
	name = "Human Field Research: Connected Minds"
	description = "We need data on the effects of extra-sensory communication in organisms. Scan some samples of humanoid organisms which can think out loud."
	performance_hint = "Such capabilities can be induced with genetic infusion, or finding the right person."
	required_traits_desc = "extra-sensory communication"
	required_count = 2

/datum/experiment/scanning/people/open_minds/is_valid_scan_target(mob/living/carbon/human/check)
	. = ..()
	if (!.)
		return

	//check for genetics telepathy
	if(check.dna.check_mutation(/datum/mutation/telepathy))
		return TRUE

	//check for shadekin organs
	var/obj/item/organ/ears/shadekin/ears = check.get_organ_slot(ORGAN_SLOT_EARS)
	var/obj/item/organ/tongue/shadekin/tongue = check.get_organ_slot(ORGAN_SLOT_TONGUE)

	if(istype(ears) || istype(tongue))
		return TRUE

	return FALSE

// RESEARCH NODES

/datum/techweb_node/cyber/empathy_implant
	display_name = "Empathic Sensor Implant"
	description = "The result of assuredly-ethical experiments conducted on those with special minds."
	prerequisite_nodes = list(/datum/techweb_node/cyber/cyber_implants)
	unlocked_designs = list(
		/datum/design/empathic_sensor,
	)
	required_experiments = list(/datum/experiment/scanning/people/open_minds)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_4_POINTS)
	announce_channels = list(RADIO_CHANNEL_SCIENCE, RADIO_CHANNEL_MEDICAL)

///Additional///

/datum/design/empathic_sensor
	name = "Empathic sensor implant"
	desc = "An implant which allows one to intuit the thoughts of some."
	build_type = PROTOLATHE | MECHFAB
	materials = list(
	/datum/material/iron = SMALL_MATERIAL_AMOUNT * 6,
	/datum/material/glass = SMALL_MATERIAL_AMOUNT * 6,
	/datum/material/silver = HALF_SHEET_MATERIAL_AMOUNT,
	/datum/material/gold = HALF_SHEET_MATERIAL_AMOUNT,
	/datum/material/bluespace = SHEET_MATERIAL_AMOUNT,)
	build_path = /obj/item/organ/cyberimp/brain/empathic_sensor
	category = list(
		RND_CATEGORY_CYBERNETICS + RND_SUBCATEGORY_CYBERNETICS_IMPLANTS_UTILITY
	)
	departmental_flags = DEPARTMENT_BITFLAG_MEDICAL | DEPARTMENT_BITFLAG_SCIENCE

/obj/item/organ/cyberimp/brain/empathic_sensor
	name = "empathic sensor implant"
	desc = "This won't fix your social issues, but it may help you repress them better." //not final
	icon_state = "brain_implant_antidrop"
	var/active = FALSE
	var/list/stored_items = list()
	slot = ORGAN_SLOT_BRAIN_CEREBELLUM
	var/modifies_speech = TRUE

// This should appropriately grant and remove empathy from the implant - important if you are a shadekin for some reason to not remove native languages, and allow the procs to work

/obj/item/organ/cyberimp/brain/empathic_sensor/emp_act(severity)
	. = ..()
	if((organ_flags & ORGAN_FAILING) || . & EMP_PROTECT_SELF)
		return

	organ_flags |= ORGAN_FAILING
	UnregisterSignal(owner, COMSIG_MOB_SAY)
	owner.remove_language(/datum/language/marish/empathy, source = LANGUAGE_IMPLANT)
	addtimer(CALLBACK(src, PROC_REF(reboot)), 180 / severity)
	to_chat(owner, span_warning("You feel overwhelmed!"))
	switch(severity)
		if (EMP_HEAVY)
			owner.adjust_stutter(180 SECONDS)
			owner.adjust_silence(30 SECONDS)
		if (EMP_LIGHT)
			owner.adjust_stutter(90 SECONDS)
			owner.adjust_silence(10 SECONDS)

/obj/item/organ/cyberimp/brain/empathic_sensor/proc/implant_ready()
	if(isnull(owner))
		return
	RegisterSignal(owner, COMSIG_MOB_SAY, PROC_REF(handle_speech))
	owner.grant_language(/datum/language/marish/empathy, source = LANGUAGE_IMPLANT)
	to_chat(owner, span_abductor("Your mind opens to others. You can hear the thoughts of those around you, but only faintly."))

/obj/item/organ/cyberimp/brain/empathic_sensor/on_mob_remove(mob/living/carbon/implant_owner)
	. = ..()
	organ_flags &= ~ORGAN_FAILING
	UnregisterSignal(implant_owner, COMSIG_MOB_SAY)
	implant_owner.remove_language(/datum/language/marish/empathy, source = LANGUAGE_IMPLANT)
	if(QDELETED(src))
		return
	to_chat(implant_owner, span_abductor("Your mind closes from others. It's quiet, now."))

/obj/item/organ/cyberimp/brain/empathic_sensor/on_mob_insert(mob/living/carbon/receiver)
	. = ..()
	to_chat(receiver, span_abductor("You begin to feel an awareness of those around you."))
	addtimer(CALLBACK(src, PROC_REF(implant_ready)), 90)

/obj/item/organ/cyberimp/brain/empathic_sensor/proc/reboot()
	organ_flags &= ~ORGAN_FAILING
	implant_ready()

//code mostly lifted from shadekins

/obj/item/organ/cyberimp/brain/empathic_sensor/proc/modify_speech(datum/source, list/speech_args)
	ASYNC
		if(organ_flags & ORGAN_FAILING) //just in case they somehow activate this while the implant is disabled...
			to_chat(owner, span_abductor("You are unable to project your thoughts."))
			return
		actually_modify_speech(source, speech_args)
	speech_args[SPEECH_MESSAGE] = "" // Makes it not send to chat verbally

/obj/item/organ/cyberimp/brain/empathic_sensor/proc/handle_speech(datum/source, list/speech_args)
	if(speech_args[SPEECH_LANGUAGE] == /datum/language/marish/empathy)
		return modify_speech(source, speech_args)

//I couldnt get this to work as a TYPE_PROC_REF. So it's copied.
/obj/item/organ/cyberimp/brain/empathic_sensor/proc/actually_modify_speech(datum/source, list/speech_args)
	var/message = speech_args[SPEECH_MESSAGE]
	var/mob/living/carbon/human/user = source
	var/obj/item/organ/ears/shadekin/user_ears = user.get_organ_slot(ORGAN_SLOT_EARS)
	var/mode = istype(user_ears)
	user.balloon_alert_to_viewers("[mode ? "ears vibrate" : "shivers"]", "projecting thoughts...")

	if(!do_after(source, 2 SECONDS, source))
		message = full_capitalize(rot13(message))
	var/rendered = span_abductor("<b>[user.real_name]:</b> [message]")

	user.log_talk(message, LOG_SAY, tag="empathic-sensor")
	for(var/mob/living/carbon/human/living_mob in GLOB.alive_mob_list)
		var/obj/item/organ/ears/shadekin/target_ears = living_mob.get_organ_slot(ORGAN_SLOT_EARS)
		var/obj/item/organ/cyberimp/brain/empathic_sensor/target_implant = living_mob.get_organ_slot(ORGAN_SLOT_BRAIN_CEREBELLUM)

		if(!istype(target_implant))
			continue

		to_chat(living_mob, rendered)
		if(living_mob != user)
			mode = istype(target_ears)
			living_mob.balloon_alert_to_viewers("[mode ? "ears vibrate" : "shivers"]", "transmission heard...")

	if(length(GLOB.dead_mob_list))
		for(var/mob/dead_mob in GLOB.dead_mob_list)
			if(dead_mob.client)
				var/link = FOLLOW_LINK(dead_mob, user)
				to_chat(dead_mob, "[link] [rendered]")

#undef LANGUAGE_IMPLANT

///Meat an Animalhide///

/obj/item/food/meat/slab/human/mutant/shadekin
	name = "Blue steak"
	icon_state = "slimemeat"
	desc = "A strange blue piece of meat, still dripping blue blood, makes it impossible for you to determine which creature's flesh it comes from."
	tastes = list("meat" = 3,"tender meat" = 2)
	foodtypes = MEAT | RAW | GORE
	venue_value = FOOD_MEAT_MUTANT
	starting_reagent_purity = 0.4 // Take a look at their diet

/obj/item/stack/sheet/animalhide/shadekin
	name = "Shade skin"
	desc = "The fluffy fur of Shadekin is soft to the touch, like cotton wool, and it provides excellent insulation. Well... Its previous owner would definitely not have minded."
	singular_name = "shadekin skin piece"
	icon_state = "polar_bear_hide"
	inhand_icon_state = null
	merge_type = /obj/item/stack/sheet/animalhide/shadekin

/obj/item/stack/sheet/animalhide/shadekin/five
	amount = 5

///Bodyparts Shadowkin///

/obj/item/bodypart/arm/left/mutant/shadowkin
	icon_greyscale = BODYPART_ICON_SHADOWKIN
	limb_id = SPECIES_SHADEKIN
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	unarmed_attack_verbs = list("slashed", "scratched", "clawed")
	grappled_attack_verb = "lacerate"
	grappled_attack_verb_continuous = "lacerates"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'
	brute_modifier = 1.2
	burn_modifier = 2.0

/obj/item/bodypart/arm/right/mutant/shadowkin
	icon_greyscale = BODYPART_ICON_SHADOWKIN
	limb_id = SPECIES_SHADEKIN
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	unarmed_attack_verbs = list("slashed", "scratched", "clawed")
	grappled_attack_verb = "lacerate"
	grappled_attack_verb_continuous = "lacerates"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'
	brute_modifier = 1.2
	burn_modifier = 2.0

/obj/item/bodypart/leg/left/mutant/shadowkin
	icon_greyscale = BODYPART_ICON_SHADOWKIN
	limb_id = SPECIES_SHADEKIN
	brute_modifier = 1.2
	burn_modifier = 2.0
	digitigrade_type = /obj/item/bodypart/leg/left/digitigrade/mutant/shadowkin
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS

/obj/item/bodypart/leg/right/mutant/shadowkin
	icon_greyscale = BODYPART_ICON_SHADOWKIN
	limb_id = SPECIES_SHADEKIN
	brute_modifier = 1.2
	burn_modifier = 2.0
	digitigrade_type = /obj/item/bodypart/leg/right/digitigrade/mutant/shadowkin
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS

/obj/item/bodypart/leg/left/digitigrade/mutant/shadowkin
	icon_greyscale = BODYPART_ICON_SHADOWKIN
	limb_id = BODYPART_ID_DIGITIGRADE
	footprint_sprite = FOOTPRINT_SPRITE_PAWS
	footstep_type = FOOTSTEP_MOB_CLAW
	brute_modifier = 1.2
	burn_modifier = 2.0
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS

/obj/item/bodypart/leg/right/digitigrade/mutant/shadowkin
	icon_greyscale = BODYPART_ICON_SHADOWKIN
	limb_id = BODYPART_ID_DIGITIGRADE
	footprint_sprite = FOOTPRINT_SPRITE_PAWS
	footstep_type = FOOTSTEP_MOB_CLAW
	brute_modifier = 1.2
	burn_modifier = 2.0
	footprint_sprite = FOOTPRINT_SPRITE_CLAWS

///Organ///

obj/item/organ/eyes/night_vision/ashwalker/shadowkin
	name = "shadowkin eyes"
	desc = "These eyes are massive, and feel warm to the touch. The shadekin that's missing these is probably feeling very queasy."
	eye_icon = 'modular_zubbers/icons/mob/human/human_face.dmi'
	eye_icon_state = "shadekin_eyes"
	flash_protect = FLASH_PROTECTION_SENSITIVE
	blink_animation = FALSE
	iris_overlay = null
	lighting_cutoff = LIGHTING_CUTOFF_MEDIUM
	color_cutoffs = list(20, 10, 40)

/obj/item/organ/tongue/shadekin/shadowkin
	liked_foodtypes = MEAT | RAW | GORE | GROSS | BUGS
	disliked_foodtypes = CLOTH | GRAIN | NUTS
	toxic_foodtypes = ALCOHOL | FRIED | JUNKFOOD | TOXIC

///Tail///

/datum/sprite_accessory/tails/mammal/wagging/big/shade/striped/shadekin_tail_pattern
	icon = 'modular_z121/icons/mob/sprite_accessory/shadowkin/tails_big.dmi'
	recommended_species = list(SPECIES_SHADOWKIN)
	organ_type = /obj/item/organ/tail/lizard

/datum/sprite_accessory/tails/mammal/wagging/big/shade/striped/shadekin_tail_pattern/tail
	name = "Shadowkin Tail"
	icon_state = "shadowkin_large"

/datum/sprite_accessory/tails/mammal/wagging/big/shade/striped/shadekin_long_pattern
	icon = 'modular_z121/icons/mob/sprite_accessory/shadowkin/tails_big.dmi'
	recommended_species = list(SPECIES_SHADOWKIN)
	organ_type = /obj/item/organ/tail/lizard

/datum/sprite_accessory/tails/mammal/wagging/big/shade/striped/shadekin_long_pattern/long
	name = "Shadowkin Long Tail"
	icon_state = "shadowkinlong_large"


/datum/sprite_accessory/tails/mammal/wagging/big/shade/striped/shadekin_big_pattern
	icon = 'modular_z121/icons/mob/sprite_accessory/shadowkin/tails_big.dmi'
	recommended_species = list(SPECIES_SHADOWKIN)
	organ_type = /obj/item/organ/tail/lizard

/datum/sprite_accessory/tails/mammal/wagging/big/shade/striped/shadekin_big_pattern/big
	name = "Shadowkin Big Tail"
	icon_state = "shadekinlongstriped_large"

*/
