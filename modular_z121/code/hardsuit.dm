//Hardsuit toggle code
/obj/item/clothing/suit/space/hardsuit/Initialize(mapload)
	MakeHelmet()
	. = ..()

/obj/item/clothing/suit/space/hardsuit/Destroy()
	if(!QDELETED(helmet))
		helmet.suit = null
		qdel(helmet)
		helmet = null
	if (isatom(jetpack))
		QDEL_NULL(jetpack)
	return ..()

/obj/item/clothing/head/helmet/space/hardsuit/Destroy()
	if(suit)
		suit.helmet = null
	return ..()

/obj/item/clothing/suit/space/hardsuit/proc/MakeHelmet()
	if(!helmettype)
		return
	if(!helmet)
		var/obj/item/clothing/head/helmet/space/hardsuit/W = new helmettype(src)
		W.suit = src
		helmet = W

/obj/item/clothing/suit/space/hardsuit/ui_action_click()
	..()
	ToggleHelmet()

/obj/item/clothing/suit/space/hardsuit/equipped(mob/user, slot)
	if(!helmettype)
		return
	if(slot != ITEM_SLOT_OCLOTHING)
		RemoveHelmet()
	..()

/obj/item/clothing/suit/space/hardsuit/proc/RemoveHelmet()
	if(!helmet)
		return
	helmet_on = FALSE
	if(ishuman(helmet.loc))
		var/mob/living/carbon/H = helmet.loc
		if(helmet.on)
			helmet.attack_self(H)
		H.transferItemToLoc(helmet, src, TRUE)
		H.update_worn_oversuit()
		to_chat(H, span_notice("动力服的头盔已收起。"))
		playsound(src.loc, 'sound/vehicles/mecha/mechmove03.ogg', 50, TRUE)
	else
		helmet.forceMove(src)

/obj/item/clothing/suit/space/hardsuit/dropped()
	..()
	RemoveHelmet()

/obj/item/clothing/suit/space/hardsuit/proc/ToggleHelmet()
	var/mob/living/carbon/human/H = src.loc
	if(!helmettype)
		return
	if(!helmet)
		to_chat(H, span_warning("头盔的灯泡似乎损坏了！你需要换一个灯泡。"))
		return
	if(!helmet_on)
		if(ishuman(src.loc))
			if(H.wear_suit != src)
				to_chat(H, span_warning("你必须穿着[src]才能展开头盔！"))
				return
			if(H.head)
				to_chat(H, span_warning("你的头上已经戴着东西了！"))
				return
			else if(H.equip_to_slot_if_possible(helmet,ITEM_SLOT_HEAD,0,0,1))
				to_chat(H, span_notice("你展开了动力服的头盔。"))
				helmet_on = TRUE
				H.update_worn_oversuit()
				playsound(src.loc, 'sound/vehicles/mecha/mechmove03.ogg', 50, TRUE)
	else
		RemoveHelmet()
//标准动力服部分代码hardsuit.dm
/// How much damage you take from an emp when wearing a hardsuit
#define HARDSUIT_EMP_BURN 2 // a very orange number

	//Baseline hardsuits
/obj/item/clothing/head/helmet/space/hardsuit
	name = "动力服头盔"
	desc = "专为危险低压环境作业设计的头盔，具备辐射屏蔽能力。"
	icon = 'modular_z121/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/head.dmi'
	worn_icon_teshari = 'modular_z121/icons/mob/clothing/head_teshari.dmi'
	icon_state = "hardsuit0-engineering"
	inhand_icon_state = "eng_helm"
	max_integrity = 300
	//armor = list(MELEE = 10, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 50, ACID = 75)
	light_system = OVERLAY_LIGHT_DIRECTIONAL
	light_range = 4
	light_power = 1
	light_on = FALSE
	var/basestate = "hardsuit"
	var/on = FALSE
	var/obj/item/clothing/suit/space/hardsuit/suit
	var/hardsuit_type = "engineering" //Determines used sprites: hardsuit[on]-[type]
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	visor_flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH | PEPPERPROOF
	armor_type = /datum/armor/hardsuit

/datum/armor/hardsuit
	melee = 10
	bullet = 5
	laser = 10
	energy = 20
	bomb = 10
	bio = 100
	fire = 50
	acid = 75
	wound = 10


/obj/item/clothing/head/helmet/space/hardsuit/Destroy()
	. = ..()
	if(!QDELETED(suit))
		qdel(suit)
	suit = null

/obj/item/clothing/head/helmet/space/hardsuit/attack_self(mob/user)
	on = !on
	icon_state = "[basestate][on]-[hardsuit_type]"
	user.update_worn_head()//so our mob-overlays update

	set_light_on(on)

	//update_action_buttons()

/obj/item/clothing/head/helmet/space/hardsuit/dropped(mob/user)
	..()
	if(suit)
		suit.RemoveHelmet()

/obj/item/clothing/head/helmet/space/hardsuit/item_action_slot_check(slot)
	if(slot == ITEM_SLOT_HEAD)
		return 1

/obj/item/clothing/head/helmet/space/hardsuit/equipped(mob/user, slot)
	..()
	if(slot != ITEM_SLOT_HEAD)
		if(suit)
			suit.RemoveHelmet()
		else
			qdel(src)

/obj/item/clothing/head/helmet/space/hardsuit/proc/display_visor_message(msg)
	var/mob/wearer = loc
	if(msg && ishuman(wearer))
		wearer.show_message("[icon2html(src, wearer)]<b>[span_robot("[msg]")]</b>", MSG_VISUAL)

/obj/item/clothing/head/helmet/space/hardsuit/emp_act(severity)
	. = ..()
	display_visor_message("检测到[severity > 1 ? "微弱" : "强烈"]电磁脉冲！")


/obj/item/clothing/suit/space/hardsuit
	name = "动力服"
	desc = "用于在危险低压环境中提供防护的特殊服装，具备辐射屏蔽能力。"
	icon = 'modular_z121/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/suit.dmi'
	worn_icon_digi = 'modular_skyrat/master_files/icons/mob/clothing/suit_digi.dmi'
	worn_icon_teshari = 'modular_z121/icons/mob/clothing/suit_teshari.dmi'
	worn_icon_taur_snake ='modular_z121/icons/mob/clothing/suit_taur_snake.dmi'
	icon_state = "hardsuit-engineering"
	inhand_icon_state = "eng_hardsuit"
	max_integrity = 300
	//armor = list(MELEE = 10, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 50, ACID = 75, WOUND = 10)
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/t_scanner, /obj/item/construction/rcd, /obj/item/pipe_dispenser)
	siemens_coefficient = 0
	var/obj/item/clothing/head/helmet/space/hardsuit/helmet
	actions_types = list(/datum/action/item_action/toggle_spacesuit, /datum/action/item_action/toggle_helmet)
	var/helmettype = /obj/item/clothing/head/helmet/space/hardsuit
	var/obj/item/tank/jetpack/suit/jetpack = null
	var/hardsuit_type
	/// Whether the helmet is on.
	var/helmet_on = FALSE

	var/list/modsuit_tail_colors			//SKYRAT EDIT ADDITION - CUSTOMIZATION
	armor_type = /datum/armor/hardsuit

/obj/item/clothing/suit/space/hardsuit/Initialize(mapload)
	if(jetpack && ispath(jetpack))
		jetpack = new jetpack(src)
	. = ..()

/obj/item/clothing/suit/space/hardsuit/attack_self(mob/user)
	user.changeNext_move(CLICK_CD_MELEE)
	..()

/obj/item/clothing/suit/space/hardsuit/examine(mob/user)
	. = ..()
	if(!helmet && helmettype)
		. += span_notice("[src]的头盔似乎出现了故障，需要更换灯泡。")

/obj/item/clothing/suit/space/hardsuit/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/tank/jetpack/suit))
		if(jetpack)
			to_chat(user, span_warning("[src]已经安装了喷气背包。"))
			return
		if(src == user.get_item_by_slot(ITEM_SLOT_OCLOTHING)) //Make sure the player is not wearing the suit before applying the upgrade.
			to_chat(user, span_warning("穿着[src]时无法为其安装升级组件。"))
			return

		if(user.transferItemToLoc(I, src))
			jetpack = I
			to_chat(user, span_notice("你成功将喷气背包装入了[src]。"))
			return
	else if(!cell_cover_open && I.tool_behaviour == TOOL_SCREWDRIVER)
		if(!jetpack)
			to_chat(user, span_warning("[src]没有安装喷气背包。"))
			return
		if(src == user.get_item_by_slot(ITEM_SLOT_OCLOTHING))
			to_chat(user, span_warning("穿着[src]时无法拆下喷气背包。"))
			return

		jetpack.turn_off(user)
		jetpack.forceMove(drop_location())
		jetpack = null
		to_chat(user, span_notice("你成功从[src]上拆下了喷气背包。"))
		return
	else if(istype(I, /obj/item/light) && helmettype)
		if(src == user.get_item_by_slot(ITEM_SLOT_OCLOTHING))
			to_chat(user, span_warning("穿着[src]时无法更换头盔灯泡。"))
			return
		if(helmet)
			to_chat(user, span_warning("[src]的头盔不需要更换灯泡。"))
			return
		var/obj/item/light/L = I
		if(L.status)
			to_chat(user, span_warning("这个灯泡损坏得太严重，无法用来替换！"))
			return
		if(do_after(user, 5 SECONDS, src))
			qdel(I)
			helmet = new helmettype(src)
			to_chat(user, span_notice("你成功修好了[src]的头盔。"))
			new /obj/item/light/bulb/broken(drop_location())
	return ..()

/obj/item/clothing/suit/space/hardsuit/equipped(mob/user, slot)
	..()
	if(jetpack)
		if(slot == ITEM_SLOT_OCLOTHING)
			for(var/X in jetpack.actions)
				var/datum/action/A = X
				A.Grant(user)

/obj/item/clothing/suit/space/hardsuit/dropped(mob/user)
	..()
	if(isatom(jetpack))
		for(var/X in jetpack.actions)
			var/datum/action/A = X
			A.Remove(user)

/obj/item/clothing/suit/space/hardsuit/item_action_slot_check(slot)
	if(slot == ITEM_SLOT_OCLOTHING) //we only give the mob the ability to toggle the helmet if he's wearing the hardsuit.
		return 1

/// Burn the person inside the hard suit just a little, the suit got really hot for a moment
/obj/item/clothing/suit/space/emp_act(severity)
	. = ..()
	var/mob/living/carbon/human/user = src.loc
	if(istype(user))
		user.apply_damage(HARDSUIT_EMP_BURN, BURN, spread_damage=TRUE)
		to_chat(user, span_warning("你感觉[src]因电磁脉冲而发热，轻微灼伤了你。"))

		// Chance to scream
		if (!IS_UNCONSCIOUS_OR_CRIT(user) && prob(10))
			user.emote("scream")

	//Engineering
/obj/item/clothing/head/helmet/space/hardsuit/engine
	name = "工程动力服头盔"
	desc = "专为危险低压环境作业设计的头盔，具备辐射屏蔽能力。"
	icon_state = "hardsuit0-engineering"
	inhand_icon_state = "eng_helm"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 100, ACID = 75, WOUND = 10)
	hardsuit_type = "engineering"
	resistance_flags = FIRE_PROOF
	armor_type = /datum/armor/hardsuit/engine

/datum/armor/hardsuit/engine
	melee = 30
	bullet = 5
	laser = 10
	energy = 20
	bomb = 10
	bio = 100
	fire = 100
	acid = 75
	wound = 10

/obj/item/clothing/head/helmet/space/hardsuit/engine/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/radiation_protected_clothing)

/obj/item/clothing/suit/space/hardsuit/engine
	name = "工程动力服"
	desc = "用于在危险低压环境中提供防护的特殊服装，具备辐射屏蔽能力。"
	icon_state = "hardsuit-engineering"
	inhand_icon_state = "eng_hardsuit"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 100, ACID = 75, WOUND = 10)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/engine
	resistance_flags = FIRE_PROOF
	armor_type = /datum/armor/hardsuit/engine

/obj/item/clothing/suit/space/hardsuit/engine/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/radiation_protected_clothing)

/obj/item/clothing/suit/space/hardsuit/engine/equipped(mob/user, slot)
	. = ..()
	AddComponent(/datum/component/geiger_sound)

/obj/item/clothing/suit/space/hardsuit/engine/dropped()
	. = ..()
	qdel(GetComponent(/datum/component/geiger_sound))

	//Atmospherics
/obj/item/clothing/head/helmet/space/hardsuit/atmos
	name = "大气动力服头盔"
	desc = "专为危险低压环境作业改装的工程动力服头盔，移除了辐射屏蔽板以增强隔热能力。"
	icon_state = "hardsuit0-atmospherics"
	inhand_icon_state = "atmo_helm"
	hardsuit_type = "atmospherics"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 100, ACID = 75, WOUND = 10)
	heat_protection = HEAD //Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	armor_type = /datum/armor/hardsuit/atmos

/datum/armor/hardsuit/atmos
	melee = 30
	bullet = 5
	laser = 10
	energy = 20
	bomb = 10
	bio = 100
	fire = 100
	acid = 75
	wound = 10

/obj/item/clothing/suit/space/hardsuit/atmos
	name = "大气动力服"
	desc = "专为危险低压环境作业改装的工程动力服，移除了辐射屏蔽板以增强隔热能力。"
	icon_state = "hardsuit-atmospherics"
	inhand_icon_state = "atmo_hardsuit"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 100, ACID = 75, WOUND = 10)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS //Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/atmos
	armor_type = /datum/armor/hardsuit/atmos

/obj/item/clothing/suit/space/hardsuit/atmos/equipped(mob/user, slot)
	. = ..()
	AddComponent(/datum/component/geiger_sound)

/obj/item/clothing/suit/space/hardsuit/atmos/dropped()
	. = ..()
	qdel(GetComponent(/datum/component/geiger_sound))

	//Chief Engineer's hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/engine/elite
	name = "高级动力服头盔"
	desc = "专为危险低压环境作业设计的高级头盔，经过精细抛光，光彩照人。"
	icon_state = "hardsuit0-white"
	inhand_icon_state = "ce_helm"
	hardsuit_type = "white"
	// Armor values are supplied by /datum/armor/hardsuit/elite.
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	armor_type = /datum/armor/hardsuit/elite

/datum/armor/hardsuit/elite
	melee = 40
	bullet = 5
	laser = 10
	energy = 20
	bomb = 50
	bio = 100
	fire = 100
	acid = 90
	wound = 10

/obj/item/clothing/suit/space/hardsuit/engine/elite
	icon_state = "hardsuit-white"
	name = "高级动力服"
	desc = "用于在危险低压环境中提供防护的高级服装，经过精细抛光，光彩照人。"
	inhand_icon_state = "ce_hardsuit"
	//armor = list(MELEE = 40, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 50, BIO = 100, FIRE = 100, ACID = 90, WOUND = 10)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/engine/elite
	jetpack = /obj/item/tank/jetpack/suit
	cell = /obj/item/stock_parts/power_store/cell/super
	armor_type = /datum/armor/hardsuit/elite

	//Mining hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/mining
	name = "采矿动力服头盔"
	desc = "专为危险低压环境作业设计的头盔，配有抵御野生动物的强化装甲和双探照灯。"
	icon_state = "hardsuit0-mining"
	inhand_icon_state = "mining_helm"
	hardsuit_type = "mining"
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF
	heat_protection = HEAD
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 50, BIO = 100, FIRE = 50, ACID = 75, WOUND = 15)
	light_range = 7
	armor_type = /datum/armor/hardsuit/mining

/datum/armor/hardsuit/mining
	melee = 30
	bullet = 5
	laser = 10
	energy = 20
	bomb = 50
	bio = 100
	fire = 50
	acid = 75
	wound = 15

/obj/item/clothing/head/helmet/space/hardsuit/mining/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)
	RegisterSignal(src, COMSIG_ARMOR_PLATED,  PROC_REF(upgrade_icon))

/obj/item/clothing/head/helmet/space/hardsuit/mining/proc/upgrade_icon(datum/source, amount, maxamount)
	SIGNAL_HANDLER

	if(amount)
		name = "强化[initial(name)]"
		hardsuit_type = "mining_goliath"
		if(amount == maxamount)
			hardsuit_type = "mining_goliath_full"
	icon_state = "hardsuit[on]-[hardsuit_type]"
	set_light_color(LIGHT_COLOR_FLARE)
	if(ishuman(loc))
		var/mob/living/carbon/human/wearer = loc
		if(wearer.head == src)
			wearer.update_worn_head()

/obj/item/clothing/suit/space/hardsuit/mining
	name = "采矿动力服"
	desc = "用于在危险低压环境中提供防护的特殊服装，配有抵御野生动物的强化装甲。"
	icon_state = "hardsuit-mining"
	inhand_icon_state = "mining_hardsuit"
	hardsuit_type = "mining"
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF
	/*//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 50, BIO = 100, FIRE = 50, ACID = 75, WOUND = 15)
	allowed = list(
		/obj/item/flashlight,
		/obj/item/gun/energy/recharge/kinetic_accelerator,
		/obj/item/mining_scanner,
		/obj/item/pickaxe,
		/obj/item/resonator,
		/obj/item/t_scanner/adv_mining_scanner,
		/obj/item/tank/internals,
		)
	*/
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/mining
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	armor_type = /datum/armor/hardsuit/mining

/obj/item/clothing/suit/space/hardsuit/mining/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)
	RegisterSignal(src, COMSIG_ARMOR_PLATED,  PROC_REF(upgrade_icon))
	allowed = GLOB.mining_suit_allowed

/obj/item/clothing/suit/space/hardsuit/mining/proc/upgrade_icon(datum/source, amount, maxamount)
	SIGNAL_HANDLER

	if(amount)
		name = "强化[initial(name)]"
		hardsuit_type = "mining_goliath"
		if(amount == maxamount)
			hardsuit_type = "mining_goliath_full"
			modsuit_tail_colors = list("222", "933", "410")	//SKYRAT EDIT ADDITION - Plated Tail Sprite
	icon_state = "hardsuit-[hardsuit_type]"
	if(ishuman(loc))
		var/mob/living/carbon/human/wearer = loc
		if(wearer.wear_suit == src)
			wearer.update_worn_oversuit()

	//Syndicate hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/syndi
	name = "血红动力服头盔"
	desc = "专为特殊行动设计的双模式高级头盔，目前处于舱外活动模式。戈尔莱克斯掠夺者的财产。"
	//alt_desc = "A dual-mode advanced helmet designed for work in special operations. It is in combat mode. Property of Gorlex Marauders."
	icon_state = "hardsuit1-syndi"
	inhand_icon_state = "syndie_helm"
	hardsuit_type = "syndi"
	//armor = list(MELEE = 40, BULLET = 50, LASER = 30, ENERGY = 40, BOMB = 35, BIO = 100, FIRE = 50, ACID = 90, WOUND = 25)
	on = TRUE
	var/obj/item/clothing/suit/space/hardsuit/syndi/linkedsuit = null
	actions_types = list(/datum/action/item_action/toggle_helmet_mode)
	visor_flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDESNOUT
	visor_flags = STOPSPRESSUREDAMAGE
	armor_type = /datum/armor/hardsuit/syndi

/datum/armor/hardsuit/syndi
	melee = 40
	bullet = 50
	laser = 30
	energy = 40
	bomb = 35
	bio = 100
	fire = 50
	acid = 90
	wound = 25

/obj/item/clothing/head/helmet/space/hardsuit/syndi/Initialize(mapload)
	. = ..()
	if(istype(loc, /obj/item/clothing/suit/space/hardsuit/syndi))
		linkedsuit = loc

/obj/item/clothing/head/helmet/space/hardsuit/syndi/attack_self(mob/user) //Toggle Helmet
	if(!isturf(user.loc))
		to_chat(user, span_warning("在[user.loc]内时无法切换头盔模式！"))
		return
	on = !on
	if(on || force)
		to_chat(user, span_notice("你将动力服切换至舱外活动模式，以移动速度换取太空环境防护。"))
		name = initial(name)
		desc = initial(desc)
		set_light_on(TRUE)
		clothing_flags |= visor_flags
		flags_cover |= HEADCOVERSEYES | HEADCOVERSMOUTH
		flags_inv |= visor_flags_inv
		cold_protection |= HEAD
	else
		to_chat(user, span_notice("你将动力服切换至战斗模式，现在可以全速奔跑了。"))
		name += "（战斗模式）"
		//desc = alt_desc
		set_light_on(FALSE)
		clothing_flags &= ~visor_flags
		flags_cover &= ~(HEADCOVERSEYES | HEADCOVERSMOUTH)
		flags_inv &= ~visor_flags_inv
		cold_protection &= ~HEAD
	update_appearance()
	playsound(src.loc, 'sound/vehicles/mecha/mechmove03.ogg', 50, TRUE)
	toggle_hardsuit_mode(user)
	/*
	if(iscarbon(user))
		var/mob/living/carbon/C = user
		C.head_update(src, forced = 1)
	*/
	icon_state = "hardsuit[on]-[hardsuit_type]"
	user.update_worn_head()
	//update_action_buttons()

/obj/item/clothing/head/helmet/space/hardsuit/syndi/proc/toggle_hardsuit_mode(mob/user) //Helmet Toggles Suit Mode
	if(linkedsuit)
		if(on)
			linkedsuit.name = initial(linkedsuit.name)
			linkedsuit.desc = initial(linkedsuit.desc)
			linkedsuit.slowdown = initial(linkedsuit.slowdown)
			linkedsuit.clothing_flags |= STOPSPRESSUREDAMAGE
			linkedsuit.cold_protection |= CHEST | GROIN | LEGS | FEET | ARMS | HANDS
		else
			linkedsuit.name += "（战斗模式）"
			//linkedsuit.desc = linkedsuit.alt_desc
			linkedsuit.slowdown = 0
			linkedsuit.clothing_flags &= ~STOPSPRESSUREDAMAGE
			linkedsuit.cold_protection &= ~(CHEST | GROIN | LEGS | FEET | ARMS | HANDS)

		linkedsuit.icon_state = "hardsuit[on]-[hardsuit_type]"
		linkedsuit.update_appearance()
		user.update_worn_oversuit()
		user.update_worn_undersuit()
		user.update_equipment_speed_mods()


/obj/item/clothing/suit/space/hardsuit/syndi
	name = "血红动力服"
	desc = "专为特殊行动设计的双模式高级动力服，目前处于舱外活动模式。戈尔莱克斯掠夺者的财产。"
	//alt_desc = "A dual-mode advanced hardsuit designed for work in special operations. It is in combat mode. Property of Gorlex Marauders."
	icon_state = "hardsuit1-syndi"
	inhand_icon_state = "syndie_hardsuit"
	hardsuit_type = "syndi"
	w_class = WEIGHT_CLASS_NORMAL
	//armor = list(MELEE = 40, BULLET = 50, LASER = 30, ENERGY = 40, BOMB = 35, BIO = 100, FIRE = 50, ACID = 90, WOUND = 25)
	allowed = list(/obj/item/gun, /obj/item/ammo_box,/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/energy/sword/saber, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi
	jetpack = /obj/item/tank/jetpack/suit
	cell = /obj/item/stock_parts/power_store/cell/hyper
	armor_type = /datum/armor/hardsuit/syndi

//Elite Syndie suit
/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite
	name = "精英辛迪加动力服头盔"
	desc = "辛迪加头盔的精英型号，具有更强的装甲和防火能力。目前处于舱外活动模式。戈尔莱克斯掠夺者的财产。"
	//alt_desc = "An elite version of the syndicate helmet, with improved armour and fireproofing. It is in combat mode. Property of Gorlex Marauders."
	icon_state = "hardsuit1-syndielite"
	hardsuit_type = "syndielite"
	//armor = list(MELEE = 60, BULLET = 60, LASER = 50, ENERGY = 60, BOMB = 55, BIO = 100, FIRE = 100, ACID = 100, WOUND = 25)
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor_type = /datum/armor/hardsuit/syndi/elite

/datum/armor/hardsuit/syndi/elite
	melee = 60
	bullet = 60
	laser = 50
	energy = 60
	bomb = 55
	bio = 100
	fire = 100
	acid = 100
	wound = 25
/*
/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/debug

/obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/admin
	name = "jannie hardsuit helmet"
	armor = list(MELEE = 100, BULLET = 100, LASER = 100, ENERGY = 100, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100, WOUND = 100)
*/
/obj/item/clothing/suit/space/hardsuit/syndi/elite
	name = "精英辛迪加动力服"
	desc = "辛迪加动力服的精英型号，具有更强的装甲和防火能力。目前处于行进模式。"
	//alt_desc = "An elite version of the syndicate hardsuit, with improved armour and fireproofing. It is in combat mode."
	icon_state = "hardsuit1-syndielite"
	hardsuit_type = "syndielite"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/elite
	//armor = list(MELEE = 60, BULLET = 60, LASER = 50, ENERGY = 60, BOMB = 55, BIO = 100, FIRE = 100, ACID = 100, WOUND = 25)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	cell = /obj/item/stock_parts/power_store/cell/bluespace
	armor_type = /datum/armor/hardsuit/syndi/elite
/*
/obj/item/clothing/suit/space/hardsuit/syndi/elite/debug
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/debug

/obj/item/clothing/suit/space/hardsuit/syndi/elite/admin //the hardsuit to end all other hardsuits
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/elite/admin
	name = "jannie hardsuit"
	slowdown = 0
	armor = list(MELEE = 100, BULLET = 100, LASER = 100, ENERGY = 100, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100, WOUND = 100)
	cell = /obj/item/stock_parts/power_store/cell/infinite
	//clothing_flags = TRAIT_SHOVE_KNOCKDOWN_BLOCKED|TRAIT_NO_STAGGER|TRAIT_NO_THROW_HITPUSH
	strip_delay = 1000
	equip_delay_other = 1000
*/
//The Owl Hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/syndi/owl
	name = "猫头鹰动力服头盔"
	desc = "为各种打击犯罪行动设计的双模式高级头盔，目前处于行进模式。"
	//alt_desc = "A dual-mode advanced helmet designed for any crime-fighting situation. It is in combat mode."
	icon_state = "hardsuit1-owl"
	inhand_icon_state = "s_helmet"
	hardsuit_type = "owl"
	visor_flags_inv = 0
	visor_flags = 0
	on = FALSE

/obj/item/clothing/suit/space/hardsuit/syndi/owl
	name = "猫头鹰动力服"
	desc = "为各种打击犯罪行动设计的双模式高级动力服，目前处于行进模式。"
	//alt_desc = "A dual-mode advanced hardsuit designed for any crime-fighting situation. It is in combat mode."
	icon_state = "hardsuit1-owl"
	inhand_icon_state = "s_suit"
	hardsuit_type = "owl"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/owl


	//Wizard hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/wizard
	name = "镶宝石动力服头盔"
	desc = "一顶镶满宝石的奇异头盔，散发着魔法能量。"
	icon_state = "hardsuit0-wiz"
	inhand_icon_state = "wiz_helm"
	hardsuit_type = "wiz"
	resistance_flags = FIRE_PROOF | ACID_PROOF //No longer shall our kind be foiled by lone chemists with spray bottles!
	// Armor values are supplied by /datum/armor/hardsuit/wizard.
	heat_protection = HEAD //Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	armor_type = /datum/armor/hardsuit/wizard

/datum/armor/hardsuit/wizard
	melee = 40
	bullet = 40
	laser = 40
	energy = 50
	bomb = 35
	bio = 100
	fire = 100
	acid = 100
	wound = 30

/obj/item/clothing/suit/space/hardsuit/wizard
	name = "镶宝石动力服"
	desc = "一套镶满宝石的奇异服装，散发着魔法能量。"
	icon_state = "hardsuit-wiz"
	inhand_icon_state = "wiz_hardsuit"
	w_class = WEIGHT_CLASS_NORMAL
	resistance_flags = FIRE_PROOF | ACID_PROOF
	//armor = list(MELEE = 40, BULLET = 40, LASER = 40, ENERGY = 50, BOMB = 35, BIO = 100, FIRE = 100, ACID = 100, WOUND = 30)
	allowed = list(/obj/item/teleportation_scroll, /obj/item/tank/internals)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS //Uncomment to enable firesuit protection
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/wizard
	cell = /obj/item/stock_parts/power_store/cell/hyper
	slowdown = 0 //you're spending 2 wizard points on this thing, the least it could do is not make you a sitting duck
	armor_type = /datum/armor/hardsuit/wizard

/obj/item/clothing/suit/space/hardsuit/wizard/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/anti_magic, TRUE, FALSE, FALSE, ITEM_SLOT_OCLOTHING, INFINITY, FALSE)


	//Medical hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/medical
	name = "医疗动力服头盔"
	desc = "专为危险低压环境作业设计的头盔，采用轻质材料以提升舒适度，但无法保护眼睛免受强光伤害。"
	icon_state = "hardsuit0-medical"
	inhand_icon_state = "medical_helm"
	hardsuit_type = "medical"
	flash_protect = FLASH_PROTECTION_NONE
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 60, ACID = 75, WOUND = 10)
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL | SNUG_FIT
	clothing_traits = list(TRAIT_REAGENT_SCANNER)
	armor_type = /datum/armor/hardsuit/medical

/datum/armor/hardsuit/medical
	melee = 30
	bullet = 5
	laser = 10
	energy = 20
	bomb = 10
	bio = 100
	fire = 60
	acid = 75
	wound = 10

/obj/item/clothing/suit/space/hardsuit/medical
	name = "医疗动力服"
	desc = "用于在危险低压环境中提供防护的特殊服装，采用轻质材料以便于活动。"
	icon_state = "hardsuit-medical"
	inhand_icon_state = "medical_hardsuit"
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/storage/medkit, /obj/item/healthanalyzer, /obj/item/stack/medical, /obj/item/gun/energy/cell_loaded/medigun) // SKYRAT EDIT MEDIGUNS
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 60, ACID = 75, WOUND = 10)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/medical
	slowdown = 0.5
	armor_type = /datum/armor/hardsuit/medical

	//Research Director hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/rd
	name = "原型动力服头盔"
	desc = "专为危险低压环境中的研究工作设计的原型头盔，科研数据在面罩上闪动。"
	icon_state = "hardsuit0-rd"
	hardsuit_type = "rd"
	resistance_flags = ACID_PROOF | FIRE_PROOF
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 100, BIO = 100, FIRE = 60, ACID = 80, WOUND = 15)
	var/explosion_detection_dist = 21
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL | SNUG_FIT
	clothing_traits = list(TRAIT_REAGENT_SCANNER, TRAIT_RESEARCH_SCANNER)
	actions_types = list(/datum/action/item_action/toggle_helmet_light)
	armor_type = /datum/armor/hardsuit/rd

/datum/armor/hardsuit/rd
	melee = 30
	bullet = 5
	laser = 10
	energy = 20
	bomb = 100
	bio = 100
	fire = 60
	acid = 80
	wound = 15

/obj/item/clothing/head/helmet/space/hardsuit/rd/Initialize(mapload)
	. = ..()
	RegisterSignal(SSdcs, COMSIG_GLOB_EXPLOSION,  PROC_REF(sense_explosion))

/obj/item/clothing/head/helmet/space/hardsuit/rd/equipped(mob/living/carbon/human/user, slot)
	..()
	if (slot == ITEM_SLOT_HEAD)
		var/datum/atom_hud/diag_hud = GLOB.huds[DATA_HUD_DIAGNOSTIC]
		diag_hud.show_to(user)

/obj/item/clothing/head/helmet/space/hardsuit/rd/dropped(mob/living/carbon/human/user)
	..()
	if (user.head == src)
		var/datum/atom_hud/diag_hud = GLOB.huds[DATA_HUD_DIAGNOSTIC]
		diag_hud.hide_from(user)

/obj/item/clothing/head/helmet/space/hardsuit/rd/proc/sense_explosion(datum/source, turf/epicenter, devastation_range, heavy_impact_range,
		light_impact_range, took, orig_dev_range, orig_heavy_range, orig_light_range)
	SIGNAL_HANDLER

	var/turf/T = get_turf(src)
	if(T?.z != epicenter.z)
		return
	if(get_dist(epicenter, T) > explosion_detection_dist)
		return
	display_visor_message("检测到爆炸！毁灭范围：[devastation_range]，重度冲击范围：[heavy_impact_range]，轻度冲击范围：[light_impact_range]")

/obj/item/clothing/suit/space/hardsuit/rd
	name = "原型动力服"
	desc = "用于在危险低压环境中提供防护的原型服装，覆盖大面积装甲以便处理爆炸物及危险研究材料。"
	icon_state = "hardsuit-rd"
	inhand_icon_state = "hardsuit-rd"
	resistance_flags = ACID_PROOF | FIRE_PROOF
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT //Same as an emergency firesuit. Not ideal for extended exposure.
	allowed = list(/obj/item/flashlight, /obj/item/tank/internals, /obj/item/gun/energy/wormhole_projector,
	/obj/item/hand_tele, /obj/item/aicard)
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 100, BIO = 100, FIRE = 60, ACID = 80, WOUND = 15)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/rd
	cell = /obj/item/stock_parts/power_store/cell/super
	armor_type = /datum/armor/hardsuit/rd

	//Security hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/security
	name = "安保动力服头盔"
	desc = "专为危险低压环境作业设计的头盔，配有额外装甲层。"
	icon_state = "hardsuit0-sec"
	inhand_icon_state = "sec_helm"
	hardsuit_type = "sec"
	//armor = list(MELEE = 35, BULLET = 15, LASER = 30,ENERGY = 40, BOMB = 10, BIO = 100, FIRE = 75, ACID = 75, WOUND = 20)
	armor_type = /datum/armor/hardsuit/security

/datum/armor/hardsuit/security
	melee = 35
	bullet = 15
	laser = 30
	energy = 40
	bomb = 10
	bio = 100
	fire = 75
	acid = 75
	wound = 20

/obj/item/clothing/suit/space/hardsuit/security
	icon_state = "hardsuit-sec"
	name = "安保动力服"
	desc = "用于在危险低压环境中提供防护的特殊服装，配有额外装甲层。"
	inhand_icon_state = "sec_hardsuit"
	//armor = list(MELEE = 35, BULLET = 15, LASER = 30, ENERGY = 40, BOMB = 10, BIO = 100, FIRE = 75, ACID = 75, WOUND = 20)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security
	armor_type = /datum/armor/hardsuit/security

/obj/item/clothing/suit/space/hardsuit/security/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_hardsuit_allowed

	//Head of Security hardsuit
/obj/item/clothing/head/helmet/space/hardsuit/security/hos
	name = "安保主管动力服头盔"
	desc = "专为危险低压环境作业设计的厚重头盔，配有额外装甲层。"
	icon_state = "hardsuit0-hos"
	hardsuit_type = "hos"
	//armor = list(MELEE = 45, BULLET = 25, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 100, FIRE = 95, ACID = 95, WOUND = 25)
	armor_type = /datum/armor/hardsuit/hos

/datum/armor/hardsuit/hos
	melee = 45
	bullet = 25
	laser = 30
	energy = 40
	bomb = 25
	bio = 100
	fire = 95
	acid = 95
	wound = 25

/obj/item/clothing/suit/space/hardsuit/security/hos
	icon_state = "hardsuit-hos"
	name = "安保主管动力服"
	desc = "用于在危险低压环境中提供防护的厚重服装，配有额外装甲层。"
	//armor = list(MELEE = 45, BULLET = 25, LASER = 30, ENERGY = 40, BOMB = 25, BIO = 100, FIRE = 95, ACID = 95, WOUND = 25)
	//helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/hos
	jetpack = /obj/item/tank/jetpack/suit
	cell = /obj/item/stock_parts/power_store/cell/super
	armor_type = /datum/armor/hardsuit/hos

	//SWAT MKII
/obj/item/clothing/head/helmet/space/hardsuit/swat
	name = "MK.II特警头盔"
	icon_state = "swat2helm"
	inhand_icon_state = "swat2helm"
	desc = "一顶MK.II型特警战术头盔。"
	//armor = list(MELEE = 40, BULLET = 50, LASER = 50, ENERGY = 60, BOMB = 50, BIO = 100, FIRE = 100, ACID = 100, WOUND = 15)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|HIDEHAIR|HIDESNOUT //we want to see the mask //this makes the hardsuit not fireproof you genius
	heat_protection = HEAD
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	actions_types = list()
	armor_type = /datum/armor/hardsuit/swat

/datum/armor/hardsuit/swat
	melee = 40
	bullet = 50
	laser = 50
	energy = 60
	bomb = 50
	bio = 100
	fire = 100
	acid = 100
	wound = 15

/obj/item/clothing/head/helmet/space/hardsuit/swat/attack_self()

/obj/item/clothing/suit/space/hardsuit/swat
	name = "MK.II特警护甲"
	desc = "采用流线型关节和优质装甲材料的MK.II特警护甲，搭配配套防毒面具即可抵御高温。这是目前最先进的战术护甲。"
	icon_state = "swat2"
	inhand_icon_state = "swat2"
	//armor = list(MELEE = 40, BULLET = 50, LASER = 50, ENERGY = 60, BOMB = 50, BIO = 100, FIRE = 100, ACID = 100, WOUND = 15)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT //this needed to be added a long fucking time ago
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/swat
	armor_type = /datum/armor/hardsuit/swat

// SWAT and Captain get EMP Protection
/obj/item/clothing/suit/space/hardsuit/swat/Initialize(mapload)
	. = ..()
	allowed = GLOB.security_hardsuit_allowed

	//Captain
/obj/item/clothing/head/helmet/space/hardsuit/swat/captain
	name = "舰长特警头盔"
	icon_state = "capspace"
	inhand_icon_state = "capspacehelmet"
	desc = "一顶兼具更强防护与时尚外观的MK.II型特警战术头盔。"

/obj/item/clothing/suit/space/hardsuit/swat/captain
	name = "舰长特警护甲"
	desc = "采用流线型关节和优质装甲材料的MK.II特警护甲，搭配配套防毒面具即可抵御高温。这是目前最先进的战术护甲，通常只配发给企业安保精锐。这套采用了纳米传讯公司的庄重配色，最好别让助理拿到它。"
	icon_state = "caparmor"
	inhand_icon_state = "capspacesuit"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/swat/captain
	cell = /obj/item/stock_parts/power_store/cell/super

	//Clown
/obj/item/clothing/head/helmet/space/hardsuit/clown
	name = "宇宙洪克动力服头盔"
	desc = "专为危险、缺乏幽默感的环境设计的头盔，具备辐射屏蔽能力。"
	icon_state = "hardsuit0-clown"
	inhand_icon_state = "hardsuit0-clown"
	// Armor values are supplied by /datum/armor/hardsuit/clown.
	hardsuit_type = "clown"
	armor_type = /datum/armor/hardsuit/clown

/datum/armor/hardsuit/clown
	melee = 30
	bullet = 5
	laser = 10
	energy = 20
	bomb = 10
	bio = 100
	fire = 60
	acid = 30
	wound = 0

/obj/item/clothing/suit/space/hardsuit/clown
	name = "宇宙洪克动力服"
	desc = "用于在危险、缺乏幽默感的环境中提供防护的特殊服装，具备辐射屏蔽能力。只有真正的小丑才能穿上它。"
	icon_state = "hardsuit-clown"
	inhand_icon_state = "clown_hardsuit"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 10, ENERGY = 20, BOMB = 10, BIO = 100, FIRE = 60, ACID = 30)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/clown
	armor_type = /datum/armor/hardsuit/clown

/obj/item/clothing/suit/space/hardsuit/clown/mob_can_equip(mob/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE)
	if(!..() || !ishuman(M))
		return FALSE
	if(is_clown_job(M.mind.assigned_role))
		return TRUE
	else
		return FALSE

	//Old Prototype
/obj/item/clothing/head/helmet/space/hardsuit/ancient
	name = "原型RIG动力服头盔"
	desc = "早期原型RIG动力服头盔，可快速覆盖使用者的头部。受设计限制，头盔没有内置摄像头，因此会限制使用者的视野。"
	icon_state = "hardsuit0-ancient"
	inhand_icon_state = "anc_helm"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 5, ENERGY = 15, BOMB = 50, BIO = 100, FIRE = 100, ACID = 75)
	hardsuit_type = "ancient"
	resistance_flags = FIRE_PROOF
	armor_type = /datum/armor/hardsuit/ancient

/datum/armor/hardsuit/ancient
	melee = 30
	bullet = 5
	laser = 5
	energy = 15
	bomb = 50
	bio = 100
	fire = 100
	acid = 75
	wound = 0

/obj/item/clothing/suit/space/hardsuit/ancient
	name = "原型RIG动力服"
	desc = "原型RIG动力服，可提供出色的太空环境防护，动力驱动装置让移动更加舒适，不过整套装备仍然十分笨重。"
	icon_state = "hardsuit-ancient"
	inhand_icon_state = "anc_hardsuit"
	//armor = list(MELEE = 30, BULLET = 5, LASER = 5, ENERGY = 15, BOMB = 50, BIO = 100, FIRE = 100, ACID = 75)
	slowdown = 3
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ancient
	resistance_flags = FIRE_PROOF
	var/footstep = 1
	var/mob/listeningTo
	armor_type = /datum/armor/hardsuit/ancient

/obj/item/clothing/suit/space/hardsuit/ancient/proc/on_mob_move()
	SIGNAL_HANDLER
	var/mob/living/carbon/human/H = loc
	if(!istype(H) || H.wear_suit != src)
		return
	if(footstep > 1)
		playsound(src, 'sound/effects/servostep.ogg', 100, TRUE)
		footstep = 0
	else
		footstep++

/obj/item/clothing/suit/space/hardsuit/ancient/equipped(mob/user, slot)
	. = ..()
	if(slot != ITEM_SLOT_OCLOTHING)
		if(listeningTo)
			UnregisterSignal(listeningTo, COMSIG_MOVABLE_MOVED)
		return
	if(listeningTo == user)
		return
	if(listeningTo)
		UnregisterSignal(listeningTo, COMSIG_MOVABLE_MOVED)
	RegisterSignal(user, COMSIG_MOVABLE_MOVED,  PROC_REF(on_mob_move))
	listeningTo = user

/obj/item/clothing/suit/space/hardsuit/ancient/dropped()
	. = ..()
	if(listeningTo)
		UnregisterSignal(listeningTo, COMSIG_MOVABLE_MOVED)

/obj/item/clothing/suit/space/hardsuit/ancient/Destroy()
	listeningTo = null
	return ..()

	//Deathsquad
/obj/item/clothing/head/helmet/space/hardsuit/deathsquad
	name = "MK.III特警头盔"
	desc = "一顶先进的战术太空头盔。"
	icon_state = "deathsquad"
	inhand_icon_state = "deathsquad"
	//armor = list(MELEE = 80, BULLET = 80, LASER = 50, ENERGY = 60, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100, WOUND = 20)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	actions_types = list()
	armor_type = /datum/armor/hardsuit/deathsquad

/datum/armor/hardsuit/deathsquad
	melee = 80
	bullet = 80
	laser = 50
	energy = 60
	bomb = 100
	bio = 100
	fire = 100
	acid = 100
	wound = 20

/obj/item/clothing/head/helmet/space/hardsuit/deathsquad/attack_self(mob/user)
	return

/obj/item/clothing/suit/space/hardsuit/deathsquad
	name = "MK.III特警护甲"
	desc = "用于替代老旧MK.II特警护甲的原型。沿用MK.II的流线型设计，将传统陶瓷及石墨烯装甲板换成塑钢，以增强对多数威胁的防护。背部留有安装某种能量投射装置的空间。"
	icon_state = "deathsquad"
	inhand_icon_state = "swat_suit"
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals, /obj/item/knife/combat)
	//armor = list(MELEE = 80, BULLET = 80, LASER = 50, ENERGY = 60, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100, WOUND = 20)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/deathsquad
	dog_fashion = /datum/dog_fashion/back/deathsquad
	cell = /obj/item/stock_parts/power_store/cell/bluespace
	armor_type = /datum/armor/hardsuit/deathsquad

	//Emergency Response Team suits
/obj/item/clothing/head/helmet/space/hardsuit/ert
	name = "紧急响应部队指挥官头盔"
	desc = "紧急响应部队动力服的一体式头盔，带有蓝色饰纹。"
	icon_state = "hardsuit0-ert_commander"
	inhand_icon_state = "hardsuit0-ert_commander"
	hardsuit_type = "ert_commander"
	//armor = list(MELEE = 65, BULLET = 50, LASER = 50, ENERGY = 60, BOMB = 50, BIO = 100, FIRE = 80, ACID = 80)
	strip_delay = 130
	light_range = 7
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	armor_type = /datum/armor/hardsuit/ert

/datum/armor/hardsuit/ert
	melee = 65
	bullet = 50
	laser = 50
	energy = 60
	bomb = 50
	bio = 100
	fire = 80
	acid = 80
	wound = 0

/obj/item/clothing/head/helmet/space/hardsuit/ert/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, LOCKED_HELMET_TRAIT)

/obj/item/clothing/suit/space/hardsuit/ert
	name = "紧急响应部队指挥官动力服"
	desc = "紧急响应部队的制式动力服，带有蓝色饰纹，可提供出色的环境危害防护。"
	icon_state = "ert_command"
	inhand_icon_state = "ert_command"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	//armor = list(MELEE = 65, BULLET = 50, LASER = 50, ENERGY = 60, BOMB = 50, BIO = 100, FIRE = 80, ACID = 80)
	slowdown = 0
	strip_delay = 130
	resistance_flags = FIRE_PROOF
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	cell = /obj/item/stock_parts/power_store/cell/bluespace
	armor_type = /datum/armor/hardsuit/ert

// ERT suit's gets EMP Protection
/obj/item/clothing/suit/space/hardsuit/ert/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/empprotection, EMP_PROTECT_CONTENTS)

	//ERT Security
/obj/item/clothing/head/helmet/space/hardsuit/ert/sec
	name = "紧急响应部队安保头盔"
	desc = "紧急响应部队动力服的一体式头盔，带有红色饰纹。"
	icon_state = "hardsuit0-ert_security"
	inhand_icon_state = "hardsuit0-ert_security"
	hardsuit_type = "ert_security"

/obj/item/clothing/suit/space/hardsuit/ert/sec
	name = "紧急响应部队安保动力服"
	desc = "紧急响应部队的制式动力服，带有红色饰纹，可提供出色的环境危害防护。"
	icon_state = "ert_security"
	inhand_icon_state = "ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/sec

	//ERT Engineering
/obj/item/clothing/head/helmet/space/hardsuit/ert/engi
	name = "紧急响应部队工程头盔"
	desc = "紧急响应部队动力服的一体式头盔，带有橙色饰纹。"
	icon_state = "hardsuit0-ert_engineer"
	inhand_icon_state = "hardsuit0-ert_engineer"
	hardsuit_type = "ert_engineer"

/obj/item/clothing/suit/space/hardsuit/ert/engi
	name = "紧急响应部队工程动力服"
	desc = "紧急响应部队的制式动力服，带有橙色饰纹，可提供出色的环境危害防护。"
	icon_state = "ert_engineer"
	inhand_icon_state = "ert_engineer"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/engi

	//ERT Medical
/obj/item/clothing/head/helmet/space/hardsuit/ert/med
	name = "紧急响应部队医疗头盔"
	desc = "紧急响应部队动力服的一体式头盔，带有白色饰纹。"
	icon_state = "hardsuit0-ert_medical"
	inhand_icon_state = "hardsuit0-ert_medical"
	hardsuit_type = "ert_medical"

/obj/item/clothing/suit/space/hardsuit/ert/med
	name = "紧急响应部队医疗动力服"
	desc = "紧急响应部队的制式动力服，带有白色饰纹，可提供出色的环境危害防护。"
	icon_state = "ert_medical"
	inhand_icon_state = "ert_medical"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/med

	//ERT Janitor
/obj/item/clothing/head/helmet/space/hardsuit/ert/jani
	name = "紧急响应部队清洁头盔"
	desc = "紧急响应部队动力服的一体式头盔，带有紫色饰纹。"
	icon_state = "hardsuit0-ert_janitor"
	inhand_icon_state = "hardsuit0-ert_janitor"
	hardsuit_type = "ert_janitor"

/obj/item/clothing/suit/space/hardsuit/ert/jani
	name = "紧急响应部队清洁动力服"
	desc = "紧急响应部队的制式动力服，带有紫色饰纹，可提供出色的环境危害防护。配有额外卡扣，可携带多种清洁工具。"
	icon_state = "ert_janitor"
	inhand_icon_state = "ert_janitor"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/jani
	allowed = list(/obj/item/tank/internals, /obj/item/storage/bag/trash, /obj/item/melee/flyswatter, /obj/item/mop, /obj/item/holosign_creator, /obj/item/reagent_containers/cup/bucket, /obj/item/reagent_containers/spray/chemsprayer/janitor)

	//ERT Clown
/obj/item/clothing/head/helmet/space/hardsuit/ert/clown
	name = "紧急响应部队小丑头盔"
	desc = "紧急响应部队动力服的一体式头盔，色彩缤纷！"
	icon_state = "hardsuit0-ert_clown"
	inhand_icon_state = "hardsuit0-ert_clown"
	hardsuit_type = "ert_clown"

/obj/item/clothing/suit/space/hardsuit/ert/clown
	name = "紧急响应部队小丑动力服"
	desc = "紧急响应部队的非制式动力服，色彩缤纷！可提供出色的环境危害防护，但面对暴怒的船员就没那么有效了。"
	icon_state = "ert_clown"
	inhand_icon_state = "ert_clown"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/clown
	allowed = list(/obj/item/tank/internals, /obj/item/bikehorn, /obj/item/instrument, /obj/item/food/grown/banana, /obj/item/grown/bananapeel)

	//Paranormal ERT
/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal
	name = "超自然响应部队头盔"
	desc = "以应对超自然威胁为业的人所佩戴的头盔。"
	icon_state = "hardsuit0-prt"
	inhand_icon_state = "hardsuit0-prt"
	hardsuit_type = "prt"
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	actions_types = list()
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/space/hardsuit/ert/paranormal
	name = "超自然响应部队动力服"
	desc = "内置强力防护结界的动力服，可保护使用者免受各种超自然威胁。"
	icon_state = "knight_grey"
	inhand_icon_state = "knight_grey"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF

/obj/item/clothing/suit/space/hardsuit/ert/paranormal/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/anti_magic, TRUE, TRUE, TRUE, ITEM_SLOT_OCLOTHING)

	//Inquisitor
/obj/item/clothing/suit/space/hardsuit/ert/paranormal/inquisitor
	name = "审判官动力服"
	icon_state = "hardsuit-inq"
	inhand_icon_state = "hardsuit-inq"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/inquisitor

/obj/item/clothing/head/helmet/space/hardsuit/ert/paranormal/inquisitor
	name = "审判官头盔"
	icon_state = "hardsuit0-inq"
	inhand_icon_state = "hardsuit0-inq"
	hardsuit_type = "inq"

//Carpsuit, bestsuit, lovesuit
/obj/item/clothing/head/helmet/space/hardsuit/carp
	name = "太空鲤鱼头盔"
	desc = "可在太空中使用，看起来像太空鲤鱼的头，闻起来也一样。"
	icon_state = "carp_helm"
	inhand_icon_state = "syndicate"
	//armor = list(MELEE = -20, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 100, FIRE = 60, ACID = 75) //As whimpy as a space carp
	light_system = NO_LIGHT_SUPPORT
	light_range = 0 //luminosity when on
	actions_types = list()
	flags_inv = HIDEEARS|HIDEHAIR|HIDEFACIALHAIR //facial hair will clip with the helm, this'll need a dynamic_fhair_suffix at some point.
	armor_type = /datum/armor/hardsuit/carp

/datum/armor/hardsuit/carp
	melee = -20
	bullet = 0
	laser = 0
	energy = 0
	bomb = 0
	bio = 100
	fire = 60
	acid = 75
	wound = 0

/obj/item/clothing/head/helmet/space/hardsuit/carp/Initialize(mapload)
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, LOCKED_HELMET_TRAIT)

/obj/item/clothing/suit/space/hardsuit/carp
	name = "太空鲤鱼太空服"
	desc = "一件修身的可疑太空鲤鱼技术产物，你怀疑它经不起拳打脚踢。"
	icon_state = "carp_suit"
	inhand_icon_state = "space_suit_syndicate"
	slowdown = 0 //Space carp magic, never stop believing
	//armor = list(MELEE = -20, BULLET = 0, LASER = 0, ENERGY = 0, BOMB = 0, BIO = 100, FIRE = 60, ACID = 75) //As whimpy whimpy whoo
	allowed = list(/obj/item/tank/internals, /obj/item/gun/ballistic/rifle/boltaction/harpoon) //I'm giving you a hint here
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/carp
	armor_type = /datum/armor/hardsuit/carp

/obj/item/clothing/head/helmet/space/hardsuit/carp/equipped(mob/living/carbon/human/user, slot)
	..()
	if (slot == ITEM_SLOT_HEAD)
		user.add_faction("carp")

/obj/item/clothing/head/helmet/space/hardsuit/carp/dropped(mob/living/carbon/human/user)
	..()
	if (user.head == src)
		user.remove_faction("carp")

/obj/item/clothing/suit/space/hardsuit/carp/old
	name = "破旧太空鲤鱼太空服"
	desc = "布满咬痕和划痕，却似乎仍能正常使用。"
	slowdown = 1

//Combat medic
/obj/item/clothing/head/helmet/space/hardsuit/combatmedic
	name = "防疫战地医护头盔"
	desc = "战地医护动力服的一体式头盔，配有明亮发光的面罩。"
	icon_state = "hardsuit0-combatmedic"
	inhand_icon_state = "hardsuit0-combatmedic"
	//armor = list(MELEE = 35, BULLET = 10, LASER = 20, ENERGY = 30, BOMB = 5, BIO = 100, FIRE = 65, ACID = 75)
	hardsuit_type = "combatmedic"
	armor_type = /datum/armor/hardsuit/combatmedic

/datum/armor/hardsuit/combatmedic
	melee = 35
	bullet = 10
	laser = 20
	energy = 30
	bomb = 5
	bio = 100
	fire = 65
	acid = 75
	wound = 0

/obj/item/clothing/suit/space/hardsuit/combatmedic
	name = "防疫战地医护动力服"
	desc = "紧急响应部队成立之前，传染病防治人员的制式动力服。型号标为“维拉杜克斯”。"
	icon_state = "combatmedic"
	inhand_icon_state = "combatmedic"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/combatmedic
	//armor = list(MELEE = 35, BULLET = 10, LASER = 20, ENERGY = 30, BOMB = 5, BIO = 100, FIRE = 65, ACID = 75)
	allowed = list(/obj/item/gun, /obj/item/melee/baton, /obj/item/circular_saw, /obj/item/tank/internals, /obj/item/storage/box/pillbottles,\
	/obj/item/storage/medkit, /obj/item/stack/medical/wrap/gauze, /obj/item/stack/medical/suture, /obj/item/stack/medical/mesh, /obj/item/storage/bag/chemistry)
	armor_type = /datum/armor/hardsuit/combatmedic

/////////////SHIELDED//////////////////////////////////

/obj/item/clothing/suit/space/hardsuit/shielded
	name = "护盾动力服"
	desc = "内置能量护盾的动力服，脱离火力攻击后会快速充能。"
	icon_state = "hardsuit-hos"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security/hos
	allowed = null
	//armor = list(MELEE = 30, BULLET = 15, LASER = 30, ENERGY = 40, BOMB = 10, BIO = 100, FIRE = 100, ACID = 100, WOUND = 15)
	resistance_flags = FIRE_PROOF | ACID_PROOF
	armor_type = /datum/armor/hardsuit/shielded

/datum/armor/hardsuit/shielded
	melee = 30
	bullet = 15
	laser = 30
	energy = 40
	bomb = 10
	bio = 100
	fire = 100
	acid = 100
	wound = 15

/obj/item/clothing/suit/space/hardsuit/shielded/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/shielded, max_charges = 3, recharge_start_delay = 20 SECONDS, charge_increment_delay = 1 SECONDS, charge_recovery = 1, lose_multiple_charges = FALSE, shield_icon = "shield-old")

/obj/item/clothing/head/helmet/space/hardsuit/shielded
	resistance_flags = FIRE_PROOF | ACID_PROOF

//////Syndicate Version
/obj/item/clothing/suit/space/hardsuit/shielded/syndi
	name = "血红动力服"
	desc = "内置能量护盾的高级动力服。"
	icon_state = "hardsuit1-syndi"
	inhand_icon_state = "syndie_hardsuit"
	hardsuit_type = "syndi"
	//armor = list(MELEE = 40, BULLET = 50, LASER = 30, ENERGY = 40, BOMB = 35, BIO = 100, FIRE = 100, ACID = 100, WOUND = 30)
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/energy/sword/saber, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/syndi
	slowdown = 0
	jetpack = /obj/item/tank/jetpack/suit
	armor_type = /datum/armor/hardsuit/shielded/syndi

/datum/armor/hardsuit/shielded/syndi
	melee = 40
	bullet = 50
	laser = 30
	energy = 40
	bomb = 35
	bio = 100
	fire = 100
	acid = 100
	wound = 30

/obj/item/clothing/suit/space/hardsuit/shielded/syndi/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/shielded, max_charges = 3, recharge_start_delay = 20 SECONDS, charge_increment_delay = 1 SECONDS, charge_recovery = 1, lose_multiple_charges = FALSE, shield_icon = "shield-red")

/obj/item/clothing/head/helmet/space/hardsuit/shielded/syndi
	name = "血红动力服头盔"
	desc = "内置能量护盾的高级动力服头盔。"
	icon_state = "hardsuit1-syndi"
	inhand_icon_state = "syndie_helm"
	hardsuit_type = "syndi"
	//armor = list(MELEE = 40, BULLET = 50, LASER = 30, ENERGY = 40, BOMB = 35, BIO = 100, FIRE = 100, ACID = 100, WOUND = 30)
	armor_type = /datum/armor/hardsuit/shielded/syndi

///SWAT version
/obj/item/clothing/suit/space/hardsuit/shielded/swat
	name = "死亡突击队太空服"
	desc = "深受突击队员青睐、用于特殊行动的高级动力服。"
	icon_state = "deathsquad"
	inhand_icon_state = "swat_suit"
	hardsuit_type = "syndi"
	//armor = list(MELEE = 80, BULLET = 80, LASER = 50, ENERGY = 60, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100, WOUND = 30)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/shielded/swat
	dog_fashion = /datum/dog_fashion/back/deathsquad
	armor_type = /datum/armor/hardsuit/shielded/swat

/datum/armor/hardsuit/shielded/swat
	melee = 80
	bullet = 80
	laser = 50
	energy = 60
	bomb = 100
	bio = 100
	fire = 100
	acid = 100
	wound = 30

/obj/item/clothing/suit/space/hardsuit/shielded/swat/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/shielded, max_charges = 4, recharge_start_delay = 1.5 SECONDS, charge_increment_delay = 1 SECONDS, charge_recovery = 1, lose_multiple_charges = FALSE, shield_icon = "shield-old")

/obj/item/clothing/head/helmet/space/hardsuit/shielded/swat
	name = "死亡突击队头盔"
	desc = "内置能量护盾的战术头盔。"
	icon_state = "deathsquad"
	inhand_icon_state = "deathsquad"
	hardsuit_type = "syndi"
	//armor = list(MELEE = 80, BULLET = 80, LASER = 50, ENERGY = 60, BOMB = 100, BIO = 100, FIRE = 100, ACID = 100, WOUND = 30)
	strip_delay = 130
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	actions_types = list()
	armor_type = /datum/armor/hardsuit/shielded/swat

#undef HARDSUIT_EMP_BURN
//准许存放列表
GLOBAL_LIST_INIT(advanced_hardsuit_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/flashlight,
	/obj/item/gun,
	/obj/item/melee/baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/tank/internals,
	)))

GLOBAL_LIST_INIT(security_hardsuit_allowed, typecacheof(list(
	/obj/item/ammo_box,
	/obj/item/ammo_casing,
	/obj/item/flashlight,
	/obj/item/gun/ballistic,
	/obj/item/gun/energy,
	/obj/item/melee/baton,
	/obj/item/reagent_containers/spray/pepper,
	/obj/item/restraints/handcuffs,
	/obj/item/tank/internals,
	)))
//更多动力服
/*
/obj/item/clothing/head/helmet/space/hardsuit/odst
	name = "orbital drop shock trooper helmet"
	desc = "The helmet of a shocktrooper's hardsuit. It's sturdy and reinforced."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit0-odst"
	hardsuit_type = "odst"

/obj/item/clothing/suit/space/hardsuit/odst
	name = "orbital drop shock trooper hardsuit"
	desc = "The hardsuit of a shocktrooper. It's lightweight, yet sturdy and reinforced. "
	//alt_desc = "The hardsuit of a shocktrooper. It's lightweight, yet sturdy and reinforced. "
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	icon_state = "ert_odst"
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	worn_icon_state = "ert_odst"
	inhand_icon_state = "ert_security"
	hardsuit_type = "odst"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/odst
	allowed = list(/obj/item/gun, /obj/item/ammo_box, /obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/energy/sword, /obj/item/tank/internals)
	armor = list(MELEE = 65, BULLET = 50, LASER = 50, ENERGY = 60, BOMB = 55, BIO = 100, FIRE = 100, ACID = 100, WOUND = 65)
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	resistance_flags = FIRE_PROOF | ACID_PROOF
	slowdown = 0
	cell = /obj/item/stock_parts/power_store/cell/bluespace

/obj/item/clothing/suit/space/hardsuit/expeditionary_corps
	name = "expeditionary corps hardsuit"
	desc = "An advanced hardsuit designed for exploratory missions."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "hardsuit-hexp_corps"
	inhand_icon_state = "eng_hardsuit"
	hardsuit_type = "hexp_corps"
	armor = list(MELEE = 42, BULLET = 42, LASER = 42, ENERGY = 42, BOMB = 60, BIO = 0, FIRE = 80, ACID = 100, WOUND = 30)
	allowed = list(/obj/item/gun, /obj/item/ammo_box,/obj/item/ammo_casing, /obj/item/melee/baton, /obj/item/melee/energy/sword, /obj/item/restraints/handcuffs, /obj/item/tank/internals)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/expeditionary_corps
	cell = /obj/item/stock_parts/power_store/cell/hyper
	slowdown = 0.5
	modsuit_tail_colors = list("#443344", "#222233", "#998888")

/obj/item/clothing/head/helmet/space/hardsuit/expeditionary_corps
	name = "expeditionary corps hardsuit helmet"
	desc = "An advanced hardsuit helmet designed for exploratory missions."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit0-hexp_corps"
	inhand_icon_state = "sec_helm"
	hardsuit_type = "hexp_corps"
	armor = list(MELEE = 42, BULLET = 42, LASER = 42, ENERGY = 42, BOMB = 60, BIO = 0, FIRE = 80, ACID = 100, WOUND = 30)
	visor_flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEFACIALHAIR|HIDESNOUT
	visor_flags = STOPSPRESSUREDAMAGE
	slowdown = 0.5

/obj/item/clothing/head/helmet/space/hardsuit/syndi/winter
	name = "winterized Syndicate hardsuit helmet"
	desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor, it is in EVA mode. Property of Gorlex Marauders."
	//alt_desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor, it is in combat mode. Property of Gorlex Marauders."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit1-syndi-winter"
	inhand_icon_state = "syndie_helm"
	hardsuit_type = "syndi-winter"

/obj/item/clothing/suit/space/hardsuit/syndi/winter
	name = "winterized Syndicate hardsuit"
	desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor, it is in EVA mode. Property of Gorlex Marauders."
	//alt_desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor, it is in combat mode. Property of Gorlex Marauders."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "hardsuit1-syndi-winter"
	inhand_icon_state = "syndie_hardsuit"
	hardsuit_type = "syndi-winter"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/winter
	modsuit_tail_colors = list("#DDDDDD", "#111111", "#d8d8d8")

/obj/item/clothing/head/helmet/space/hardsuit/syndi/wintertas
	name = "winterized Syndicate hardsuit helmet"
	desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor, it is in EVA mode. Property of Gorlex Marauders."
	//alt_desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor, it is in combat mode. Property of Gorlex Marauders."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit1-syndi-wintertas"
	inhand_icon_state = "syndie_helm"
	hardsuit_type = "syndi-wintertas"

/obj/item/clothing/suit/space/hardsuit/syndi/wintertas
	name = "winterized Syndicate hardsuit"
	desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor; this version does not have tassets, it is in EVA mode. Property of Gorlex Marauders."
	//alt_desc = "A winterized variant of the ever feared Blood-Red Hardsuit for work in frozen conditions, despite the extra padding for comfort it does not have superior armor; this version does not have tassets, it is in combat mode. Property of Gorlex Marauders."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "hardsuit1-syndi-wintertas"
	inhand_icon_state = "syndie_hardsuit"
	hardsuit_type = "syndi-wintertas"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/syndi/wintertas
	modsuit_tail_colors = list("#DDDDDD", "#111111", "#d8d8d8")

/obj/item/device/custom_kit/winterized
	name = "syndicate Hardsuit winterized plating kit"
	desc = "A modification kit that comes with the tools neccessary to modify a Standard Blood-Red Hardsuit into it's winterized variant. This one comes with tassets. Warranty void if tampered with, property of Gorlex Marauders."
	icon = 'modular_skyrat/master_files/icons/donator/obj/kits.dmi'
	icon_state = "partskit-synd"
	from_obj = /obj/item/clothing/suit/space/hardsuit/syndi
	to_obj = /obj/item/clothing/suit/space/hardsuit/syndi/winter

/obj/item/device/custom_kit/winterized_notasset
	name = "syndicate Hardsuit winterized plating kit"
	desc = "A modification kit that comes with the tools neccessary to modify a Standard Blood-Red Hardsuit into it's winterized variant. This one comes with no tassets. Warranty void if tampered with, property of Gorlex Marauders."
	icon = 'modular_skyrat/master_files/icons/donator/obj/kits.dmi'
	icon_state = "partskit-synd"
	from_obj = /obj/item/clothing/suit/space/hardsuit/syndi
	to_obj = /obj/item/clothing/suit/space/hardsuit/syndi/wintertas

//HARDSUITS
/obj/item/clothing/head/helmet/space/hardsuit/security_peacekeeper
	name = "Armadyne SS-01 voidsuit helmet"
	desc = "An Armadyne brand voidsuit helmet, with a decent layer of armor, this one comes in the peacekeeper colors."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit0-peacekeeper"
	inhand_icon_state = "sec_helm"
	hardsuit_type = "peacekeeper"
	armor = list(MELEE = 35, BULLET = 15, LASER = 30,ENERGY = 40, BOMB = 10, BIO = 100, FIRE = 75, ACID = 75, WOUND = 20)

/obj/item/clothing/suit/space/hardsuit/security_peacekeeper
	name = "Armadyne SS-01 voidsuit"
	desc = "An Armadyne brand voidsuit, with a decent layer of armor, this one comes in the peacekeeper colors."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	//worn_icon_digi = 'modular_skyrat/master_files/icons/mob/clothing/suit_digi.dmi'
	icon_state = "hardsuit-peacekeeper"
	inhand_icon_state = "sec_hardsuit"
	armor = list(MELEE = 35, BULLET = 15, LASER = 30, ENERGY = 40, BOMB = 10, BIO = 100, FIRE = 75, ACID = 75, WOUND = 20)
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/security_peacekeeper
	modsuit_tail_colors = list("#BBBBBB", "#444444", "#333377")

/obj/machinery/suit_storage_unit/security_peacekeeper
	suit_type = /obj/item/clothing/suit/space/hardsuit/security_peacekeeper
	mask_type = /obj/item/clothing/mask/gas/sechailer

/obj/item/clothing/suit/space/hardsuit/security_peacekeeper/Initialize()
	. = ..()
	allowed = GLOB.security_hardsuit_allowed
*/
/obj/item/clothing/head/helmet/space/hardsuit/swat/centcom
	name = "中央指挥部特警头盔"
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	worn_icon_state = "centcomspace"
	icon_state = "centcomspace"
	inhand_icon_state = "centcomspacehelmet"
	desc = "一顶兼具更强防护与时尚外观的MK.II型特警战术头盔。"

/obj/item/clothing/suit/space/hardsuit/swat/centcom
	name = "中央指挥部特警护甲"
	desc = "采用流线型关节和优质装甲材料的MK.II特警护甲，搭配配套防毒面具即可抵御高温。通常配发给舰长，这套则采用了中央指挥部的绿色涂装与金色饰纹。"
	icon_state = "centcom"
	inhand_icon_state = "centcomspacesuit"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/swat/centcom
	cell = /obj/item/stock_parts/power_store/cell/super
/*
/obj/item/clothing/head/helmet/space/hardsuit/ert/traumateam
	name = "emergency trauma team response helmet"
	desc = "The integrated helmet of a Trauma Team unit's hardsuit."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit0-traumateam"
	hardsuit_type = "traumateam"

/obj/item/clothing/suit/space/hardsuit/ert/traumateam
	name = "emergency trauma team response hardsuit"
	desc = "The standard issue hardsuit-hybrid fit for a trauma team specialist."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "ert_traumateam"
	inhand_icon_state = "ert_command"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/traumateam

/obj/item/clothing/head/helmet/space/hardsuit/ert/marine
	name = "marine helmet"
	desc = "The integrated helmet of an advanced Marine hardsuit, fielded by Nanotrasen's navy."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/hats.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/head.dmi'
	icon_state = "hardsuit0-marine"
	inhand_icon_state = "hardsuit0-marine" //should never be able to hold it but hey
	hardsuit_type = "marine"
	armor = list(MELEE = 65, BULLET = 65, LASER = 65, ENERGY = 60, BOMB = 80, BIO = 100, FIRE = 100, ACID = 80)

/obj/item/clothing/suit/space/hardsuit/ert/marine
	name = "marine hardsuit"
	desc = "The standard issue hardsuit of the Nanotrasen Marine Corps, fitted with advanced plasteel composite plating and a nanogel-lined undersuit for maximum protection and minimal slowdown."
	icon = 'modular_skyrat/master_files/icons/obj/clothing/suits.dmi'
	worn_icon = 'modular_skyrat/master_files/icons/mob/clothing/suit.dmi'
	icon_state = "marinesuit"
	inhand_icon_state = "ert_security"
	helmettype = /obj/item/clothing/head/helmet/space/hardsuit/ert/marine
	armor = list(MELEE = 65, BULLET = 65, LASER = 65, ENERGY = 60, BOMB = 80, BIO = 100, FIRE = 100, ACID = 80)
*/
//Jetpack
/obj/item/tank/jetpack/suit
	name = "动力服喷气背包升级组件"
	desc = "一套紧凑的模块化推进器，可整合进动力服，使用动力服储物槽内的气瓶供气。"
	icon_state = "jetpack-mining"
	inhand_icon_state = "jetpack-black"
	w_class = WEIGHT_CLASS_NORMAL
	actions_types = list(/datum/action/item_action/toggle_jetpack, /datum/action/item_action/jetpack_stabilization)
	volume = 1
	slot_flags = null
	gas_type = null
	var/datum/gas_mixture/tempair_contents
	var/obj/item/tank/internals/tank = null
	var/mob/living/carbon/human/active_user = null
	var/obj/item/clothing/suit/space/hardsuit/active_hardsuit = null


/obj/item/tank/jetpack/suit/Initialize(mapload)
	. = ..()
	STOP_PROCESSING(SSobj, src)
	tempair_contents = air_contents


/obj/item/tank/jetpack/suit/Destroy()
	if(on)
		turn_off()
	return ..()


/obj/item/tank/jetpack/suit/attack_self()
	return

/obj/item/tank/jetpack/suit/cycle(mob/user)
	if(!istype(loc, /obj/item/clothing/suit/space/hardsuit))
		to_chat(user, span_warning("[src]必须连接到动力服！"))
		return

	var/mob/living/carbon/human/H = user
	if(!istype(H.s_store, /obj/item/tank/internals))
		to_chat(user, span_warning("动力服储物槽内需要放置气瓶！"))
		return
	return ..()


/obj/item/tank/jetpack/suit/turn_on(mob/user)
	if(!istype(loc, /obj/item/clothing/suit/space/hardsuit) || !ishuman(loc.loc) || loc.loc != user)
		return FALSE
	active_user = user
	tank = active_user.s_store
	air_contents = tank.return_air()
	. = ..()
	if(!.)
		active_user = null
		tank = null
		air_contents = null
		return
	active_hardsuit = loc
	RegisterSignal(active_hardsuit, COMSIG_MOVABLE_MOVED,  PROC_REF(on_hardsuit_moved))
	RegisterSignal(src, COMSIG_MOVABLE_MOVED,  PROC_REF(on_moved))
	RegisterSignal(active_user, COMSIG_QDELETING,  PROC_REF(on_user_del))
	START_PROCESSING(SSobj, src)


/obj/item/tank/jetpack/suit/turn_off(mob/user)
	STOP_PROCESSING(SSobj, src)
	UnregisterSignal(src, COMSIG_MOVABLE_MOVED)
	if(active_hardsuit)
		UnregisterSignal(active_hardsuit, COMSIG_MOVABLE_MOVED)
		active_hardsuit = null
	if(active_user)
		UnregisterSignal(user, COMSIG_QDELETING)
		active_user = null
	tank = null
	air_contents = tempair_contents
	return ..()


/obj/item/tank/jetpack/suit/process()
	var/mob/living/carbon/human/H = loc.loc
	if(!tank || tank != H.s_store)
		turn_off(active_user)
		return
	excited = TRUE
	..()


/// Called when the jetpack moves, presumably away from the hardsuit.
/obj/item/tank/jetpack/suit/proc/on_moved(atom/movable/source, atom/old_loc, movement_dir, forced, list/atom/old_locs)
	SIGNAL_HANDLER
	if(istype(loc, /obj/item/clothing/suit/space/hardsuit) && ishuman(loc.loc) && loc.loc == active_user)
		UnregisterSignal(active_hardsuit, COMSIG_MOVABLE_MOVED)
		active_hardsuit = loc
		RegisterSignal(loc, COMSIG_MOVABLE_MOVED,  PROC_REF(on_hardsuit_moved))
		return
	turn_off(active_user)


/// Called when the hardsuit loc moves, presumably away from the human user.
/obj/item/tank/jetpack/suit/proc/on_hardsuit_moved(atom/movable/source, atom/old_loc, movement_dir, forced, list/atom/old_locs)
	SIGNAL_HANDLER
	turn_off(active_user)


/// Called when the human wearing the suit that contains this jetpack is deleted.
/obj/item/tank/jetpack/suit/proc/on_user_del(mob/living/carbon/human/source, force)
	SIGNAL_HANDLER
	turn_off(active_user)


//Return a jetpack that the mob can use
//Back worn jetpacks, hardsuit internal packs, and so on.
//Used in Process_Spacemove() and wherever you want to check for/get a jetpack

/mob/proc/get_jetpack()
	return

/mob/living/carbon/get_jetpack()
	var/obj/item/tank/jetpack/J = get_item_by_slot(ITEM_SLOT_BACK)
	if(istype(J))
		return J

/mob/living/carbon/human/get_jetpack()
	var/obj/item/tank/jetpack/J = ..()
	if(!istype(J) && istype(wear_suit, /obj/item/clothing/suit/space/hardsuit))
		var/obj/item/clothing/suit/space/hardsuit/C = wear_suit
		J = C.jetpack
	return J
//Pack to buy
/datum/supply_pack/misc/hardsuit_medical
	name = "医疗动力服箱"
	desc = "装有一件动力服,医用技术规格,该规格目前已被淘汰."
	order_flags = ORDER_CONTRABAND
	cost = CARGO_CRATE_VALUE * 13
	//access = ACCESS_MEDICAL
	contains = list(/obj/item/clothing/suit/space/hardsuit/medical)
	crate_name = "医用动力服箱"
	crate_type = /obj/structure/closet/crate/secure //No medical varient with security locks.

/datum/supply_pack/misc/hardsuit_engineering
	name = "工程动力服箱"
	desc = "装有一件动力服, 工程技术规格,该规格目前已被淘汰."
	access = ACCESS_ENGINE_EQUIP
	//contraband = TRUE
	contains = list(/obj/item/clothing/suit/space/hardsuit/engine)
	cost = CARGO_CRATE_VALUE * 13
	crate_name = "工程动力服箱"
	crate_type = /obj/structure/closet/crate/secure/engineering

/datum/supply_pack/misc/hardsuit_atmospherics
	name = "大气动力服箱"
	desc = "装有一件动力服, 大气工程技术规格,该规格目前已被淘汰."
	access = ACCESS_ENGINE_EQUIP
	//contraband = TRUE
	contains = list(/obj/item/clothing/suit/space/hardsuit/atmos)
	cost = CARGO_CRATE_VALUE * 16
	crate_name = "大气动力服箱"
	crate_type = /obj/structure/closet/crate/secure/engineering

/datum/supply_pack/misc/hardsuit_ce
	name = "总工程师动力服箱"
	desc = "装有一件曾经专供总工程师的经典动力服，目前已被淘汰。"
	access = ACCESS_CE
	//contraband = TRUE
	contains = list(/obj/item/clothing/suit/space/hardsuit/engine/elite)
	cost = CARGO_CRATE_VALUE * 25
	crate_name = "总工程师动力服箱"
	crate_type = /obj/structure/closet/crate/secure/engineering

/datum/supply_pack/misc/hardsuit_security
	name = "安保动力服箱"
	desc = "装有一件动力服, 安保装备规格,该规格目前已被淘汰."
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 20
	access = ACCESS_SECURITY
	contains = list(/obj/item/clothing/suit/space/hardsuit/security)
	crate_name = "安保动力服箱"
	crate_type = /obj/structure/closet/crate/secure/gear
/*
/datum/supply_pack/misc/hardsuit_peacekeeper
	name = "维和动力服箱"
	desc = "装有一件Armadyne公司版安保动力服,目前已被淘汰."
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 20
	access = ACCESS_SECURITY
	contains = list(/obj/item/clothing/suit/space/hardsuit/security_peacekeeper)
	crate_name = "维和动力服箱"
	crate_type = /obj/structure/closet/crate/secure/gear
*/
/datum/supply_pack/misc/hardsuit_hos
	name = "安保主管动力服箱"
	desc = "装有一件曾经专供安保主管的经典动力服，目前已被淘汰。"
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 28
	access = ACCESS_SECURITY
	contains = list(/obj/item/clothing/head/helmet/space/hardsuit/security/hos)
	crate_name = "安保主管动力服箱"
	crate_type = /obj/structure/closet/crate/secure/gear

/datum/supply_pack/misc/hardsuit_captain
	name = "舰长动力服箱"
	desc = "装有一件动力服,曾经仅提供给舰长的先进动力服,目前已被淘汰.其出现在黑市的原因未知."
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 30
	access = ACCESS_CAPTAIN
	contains = list(/obj/item/clothing/suit/space/hardsuit/swat/captain)
	crate_name = "舰长动力服箱"
	crate_type = /obj/structure/closet/crate/secure/gear

/datum/supply_pack/misc/hardsuit_rd
	name = "科研主管动力服箱"
	desc = "装有一件曾经专供科研主管的经典动力服，目前已被淘汰。"
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 25
	access = ACCESS_RD
	contains = list(/obj/item/clothing/suit/space/hardsuit/rd)
	crate_name = "科研主管动力服箱"
	crate_type = /obj/structure/closet/crate/secure/science
/*
/datum/supply_pack/misc/hardsuit_exp
	name = "远征动力服箱"
	desc = "装有一件动力服,曾经仅提供给远征先锋的先进动力服,目前已被淘汰.必须由拥有远征权限者打开"
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 25
	access = ACCESS_GATEWAY
	contains = list(/obj/item/clothing/suit/space/hardsuit/expeditionary_corps)
	crate_name = "远征动力服箱"
	crate_type = /obj/structure/closet/crate/secure/science
*/
/datum/supply_pack/misc/hardsuit_mining
	name = "矿工动力服箱"
	desc = "装有一件动力服, 矿用装备规格,该规格目前已被淘汰."
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 16
	access = ACCESS_MINING
	contains = list(/obj/item/clothing/suit/space/hardsuit/mining)
	crate_name = "矿工动力服箱"
	crate_type = /obj/structure/closet/crate/secure

/datum/supply_pack/misc/hardsuit_jetpack
	name = "动力服喷气背包箱"
	desc = "装有动力服推进模块,使用当前连接的气瓶内气体作为推进剂,必须安装进动力服内才能使用 ."
	//contraband = TRUE
	cost = CARGO_CRATE_VALUE * 6
	contains = list(/obj/item/tank/jetpack/suit)
	crate_name = "动力服喷气背包箱"
