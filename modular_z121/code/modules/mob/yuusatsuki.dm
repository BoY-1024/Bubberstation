/mob/living/basic/pet/yuusatsuki
	name = "优月"
	desc = "一只穿着连身服的小家伙。"
	gender = FEMALE
	icon = 'modular_z121/icons/mob/pets.dmi'
	icon_state = "yuusatsuki_jumpsuit"
	icon_living = "yuusatsuki_jumpsuit"
	icon_dead = "yuusatsuki_dead"
	see_in_dark = 6
	pass_flags = PASSTABLE
	mob_size = MOB_SIZE_SMALL
	mob_biotypes = MOB_ORGANIC|MOB_BEAST
	minimum_survivable_temperature = NPC_DEFAULT_MIN_TEMP
	maximum_survivable_temperature = NPC_DEFAULT_MAX_TEMP
	maxHealth = 100
	health = 100
	unsuitable_atmos_damage = 0.3
	response_help_continuous = "抚摸"
	response_help_simple = "抚摸"
	response_disarm_continuous = "轻轻推开"
	response_disarm_simple = "轻轻推开"
	response_harm_continuous = "踢"
	response_harm_simple = "踢"
	mobility_flags = MOBILITY_FLAGS_REST_CAPABLE_DEFAULT
	//collar_type = "cat"
	attack_verb_continuous = "拍打"
	attack_verb_simple = "拍打"
	attack_sound = 'sound/effects/blob/attackblob.ogg'
	attack_vis_effect = ATTACK_EFFECT_CLAW
	gold_core_spawnable = NO_SPAWN
	attack_vis_effect = ATTACK_EFFECT_SLASH
	obj_damage = 0

/mob/living/basic/pet/yuusatsuki/Initialize(mapload)
	. = ..()
	add_traits(list(TRAIT_CAN_STRIP), ROUNDSTART_TRAIT)
	AddElement(/datum/element/pet_bonus)
	AddElement(/datum/element/dextrous)
	AddElement(/datum/element/footstep, FOOTSTEP_MOB_CLAW)
	AddComponent(/datum/component/personal_crafting)
	AddComponent(/datum/component/basic_inhands, y_offset = -1)

/mob/living/basic/pet/yuusatsuki/gib()
	return
