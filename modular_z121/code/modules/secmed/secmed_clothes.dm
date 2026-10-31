/obj/item/clothing/suit/toggle/labcoat/skyrat/security_medic
	name = "安保医护实验服"
	desc = "安保医护人员穿着的轻便外套。"
	icon = 'modular_z121/icons/obj/clothing/suits/labcoat.dmi'
	icon_state = "secmed_labcoat"
	worn_icon = 'modular_z121/icons/mob/clothing/suits/labcoat.dmi'
	worn_icon_state = "secmed_labcoat"
	blood_overlay_type = "armor"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	armor_type = /datum/armor/skyrat_security_medic

/datum/armor/skyrat_security_medic
	melee = 35
	bullet = 30
	laser = 30
	energy = 40
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/toggle/labcoat/skyrat/security_medic/Initialize(mapload)
	. = ..()
	allowed += list(
		/obj/item/flashlight,
		/obj/item/gun,
		/obj/item/melee/baton/telescopic,
		/obj/item/storage/medkit
		)

/obj/item/clothing/suit/toggle/labcoat/skyrat/security_medic/blue
	icon_state = "secmed_labcoat_blue"

/obj/item/clothing/suit/hazardvest/security_medic
	name = "安保医护背心"
	desc = "安保医护人员穿着的轻便背心。"
	icon = 'modular_z121/icons/obj/clothing/suits/armor.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/suits/armor.dmi'
	icon_state = "secmed_vest"
	worn_icon_state = "secmed_vest"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/reagent_containers/cup/bottle, /obj/item/reagent_containers/cup/beaker, /obj/item/reagent_containers/applicator/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/baton/telescopic, /obj/item/soap, /obj/item/tank/internals/emergency_oxygen, /obj/item/gun, /obj/item/storage/medkit)
	armor_type = /datum/armor/hazardvest_security_medic

/datum/armor/hazardvest_security_medic
	melee = 35
	bullet = 30
	laser = 30
	energy = 40
	bomb = 25
	fire = 50
	acid = 50
	wound = 10

/obj/item/clothing/suit/hazardvest/security_medic/blue
	icon_state = "secmed_vest_blue"
	worn_icon_state = "secmed_vest_blue"

/obj/item/clothing/suit/armor/vest/peacekeeper/security_medic
	name = "安保医护防弹背心"
	desc = "安保医护人员的防弹背心，上面有能装小物件的小口袋。"
	icon = 'modular_z121/icons/obj/clothing/suits/armor.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/suits/armor.dmi'
	icon_state = "secmed_armor"
	worn_icon_state = "secmed_armor"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON
	allowed = list(/obj/item/analyzer, /obj/item/stack/medical, /obj/item/dnainjector, /obj/item/reagent_containers/dropper, /obj/item/reagent_containers/syringe, /obj/item/reagent_containers/hypospray, /obj/item/healthanalyzer, /obj/item/flashlight, /obj/item/reagent_containers/cup/bottle, /obj/item/reagent_containers/cup/beaker, /obj/item/reagent_containers/applicator/pill, /obj/item/storage/pill_bottle, /obj/item/paper, /obj/item/melee/baton/telescopic, /obj/item/soap, /obj/item/tank/internals/emergency_oxygen, /obj/item/gun, /obj/item/storage/medkit)

/obj/item/clothing/under/rank/security/peacekeeper/security_medic
	name = "安保医护高领衫"
	desc = "舒适的高领衫，配有标识安保医护身份的白色臂章。"
	icon = 'modular_z121/icons/obj/clothing/under/security.dmi'
	icon_state = "security_medic_turtleneck"
	worn_icon = 'modular_z121/icons/mob/clothing/under/security.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/under/security_digi.dmi'
	worn_icon_state = "security_medic_turtleneck"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION

/obj/item/clothing/under/rank/security/peacekeeper/security_medic/skirt
	name = "安保医护高领裙装"
	desc = "舒适的高领衫搭配棕色裙子，白色臂章标识着安保医护身份。"
	icon_state = "security_medic_turtleneck_skirt"
	body_parts_covered = CHEST|GROIN|ARMS
	female_sprite_flags = FEMALE_UNIFORM_TOP_ONLY
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

/obj/item/clothing/head/beret/sec/peacekeeper/security_medic
	name = "安保医护贝雷帽"
	desc = "饰有医疗徽章的结实贝雷帽，采用强化织物，能提供足够的防护。"
	icon_state = "modular_z121/icons/obj/item/clothing/head/beret/sec/peacekeeper/security_medic"
	greyscale_colors = "#3F3C40#870E12"
	post_init_icon_state = "beret_badge_med"
	supports_variations_flags = CLOTHING_DIGITIGRADE_VARIATION_NO_NEW_ICON

