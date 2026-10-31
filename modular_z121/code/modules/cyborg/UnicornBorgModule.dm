/*
/datum/language_holder/synthetic/VI
	understood_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
								/datum/language/uncommon = list(LANGUAGE_ATOM),
								/datum/language/machine = list(LANGUAGE_ATOM),
								/datum/language/draconic = list(LANGUAGE_ATOM),
								/datum/language/moffic = list(LANGUAGE_ATOM),
								/datum/language/calcic = list(LANGUAGE_ATOM),
								/datum/language/voltaic = list(LANGUAGE_ATOM),
								/datum/language/slime = list(LANGUAGE_ATOM),
								/datum/language/spacer = list(LANGUAGE_ATOM),
								/datum/language/panslavic = list(LANGUAGE_ATOM),
								/datum/language/vox = list(LANGUAGE_ATOM),
								/datum/language/skrell = list(LANGUAGE_ATOM),
								/datum/language/gutter = list(LANGUAGE_ATOM),
								/datum/language/drone = list(LANGUAGE_ATOM),
								/datum/language/nekomimetic = list(LANGUAGE_ATOM))
	spoken_languages = list(/datum/language/common = list(LANGUAGE_ATOM),
							/datum/language/uncommon = list(LANGUAGE_ATOM),
							/datum/language/machine = list(LANGUAGE_ATOM),
							/datum/language/draconic = list(LANGUAGE_ATOM),
							/datum/language/moffic = list(LANGUAGE_ATOM),
							/datum/language/calcic = list(LANGUAGE_ATOM),
							/datum/language/voltaic = list(LANGUAGE_ATOM),
							/datum/language/slime = list(LANGUAGE_ATOM),
							/datum/language/spacer = list(LANGUAGE_ATOM),
							/datum/language/panslavic = list(LANGUAGE_ATOM),
							/datum/language/vox = list(LANGUAGE_ATOM),
							/datum/language/skrell = list(LANGUAGE_ATOM),
							//datum/language/gutter = list(LANGUAGE_ATOM),
							/datum/language/drone = list(LANGUAGE_ATOM),
							/datum/language/nekomimetic = list(LANGUAGE_ATOM))
*/
//ARCD
/obj/item/construction/rcd/arcd/mattermanipulator/admin
	name = "管理员物质操纵器"
	max_matter = INFINITY
	matter = INFINITY
	construction_upgrades = RCD_UPGRADE_FRAMES | RCD_UPGRADE_SIMPLE_CIRCUITS | RCD_UPGRADE_FURNISHING

//Material
/datum/robot_energy_storage/Meta
	name = "元合成器"
	max_energy = 100000
	recharge_rate = 100

/obj/item/stack/sheet/plasteel
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/plasma/safe
	resistance_flags = LAVA_PROOF | FIRE_PROOF
	cost = 500
	source = /datum/robot_energy_storage/Meta

/obj/item/stack/sheet/mineral/plasma/safe/attackby(obj/item/W as obj, mob/user as mob, params)
	if(W.get_temperature() < 0)
		var/turf/T = get_turf(src)
		message_admins("[ADMIN_LOOKUPFLW(user)]试图在[ADMIN_VERBOSEJMP(T)]点燃安全等离子板。")
		log_game("[key_name(user)]试图在[AREACOORD(T)]点燃安全等离子板。")
		fire_act(W.get_temperature())
	else
		return ..()
/obj/item/stack/sheet/mineral/plasma/fire_act(exposed_temperature, exposed_volume)
	atmos_spawn_air("plasma=[amount*0];TEMP=[exposed_temperature]")

/obj/item/stack/sheet/plasmaglass
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/plasmarglass
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/titanium
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/titaniumglass
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/silver
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/gold
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/diamond
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/uranium
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/wood
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/mineral/sandstone
	cost = 500
	source = /datum/robot_energy_storage/Meta
/obj/item/stack/sheet/plastic
	cost = 500
	source = /datum/robot_energy_storage/Meta

/obj/item/stack/medical/splint/Initialize()
	. = ..()
	cost = 250
	source = /datum/robot_energy_storage/medical

/obj/item/stack/medical/ointment/Initialize()
	. = ..()
	cost = 100
	source = /datum/robot_energy_storage/medical

/obj/item/stack/medical/mesh/advanced/Initialize()
	. = ..()
	cost = 100
	source = /datum/robot_energy_storage/medical

/obj/item/stack/medical/suture/medicated/Initialize()
	. = ..()
	cost = 100
	source = /datum/robot_energy_storage/medical

/obj/item/stack/medical/poultice/Initialize()
	. = ..()
	cost = 100
	source = /datum/robot_energy_storage/medical

/obj/item/stack/sticky_tape/surgical/Initialize()
	. = ..()
	cost = 250
	source = /datum/robot_energy_storage/medical

/obj/item/rsf/unicorn
	cost_by_item = list(
		/obj/item/plate = 20,
		/obj/item/reagent_containers/cup/glass/drinkingglass/shotglass = 20,
		/obj/item/reagent_containers/cup/glass/drinkingglass = 20,
		/obj/item/reagent_containers/cup/bucket = 100,
		/obj/item/paper = 10,
		/obj/item/flashlight/flare/candle = 10,
		/obj/item/reagent_containers/cup/bowl = 100,
		/obj/item/plate/small = 10,
		/obj/item/plate/large = 50,
		/obj/item/razor = 200,
		/obj/item/storage/dice = 200,
		/obj/item/pen = 50,
		/obj/item/pen/blue = 50,
		/obj/item/pen/red = 50,
		/obj/item/pen/fourcolor = 200,
		/obj/item/pen/fountain = 200,
		/obj/item/cigarette = 10,
		/obj/item/cigarette/cigar = 200,
		/obj/item/food/bubblegum = 100,
		/obj/item/food/cookie = 100,
		/obj/item/food/cookie/bacon = 100,
		/obj/item/food/cookie/cloth = 100,
		/obj/item/food/cookie/sugar = 100,
		/obj/item/food/popcorn = 100,
		)

/obj/item/construction/plumbing/admin
	name = "中央指挥部管路建造器"
	//icon = 'modular_nova/modules/aesthetics/tools/icons/tools.dmi'
	icon_state = "plumberer_engi"
	max_matter = INFINITY
	matter = INFINITY
	var/static/list/admin_design_types = list(
		"Synthesizers" = list(
			/obj/machinery/plumbing/synthesizer = 1,
			/obj/machinery/plumbing/reaction_chamber/chem = 1,
			/obj/machinery/plumbing/grinder_chemical = 1,
			/obj/machinery/vatgrower = 1,
			/obj/machinery/plumbing/fermenter = 1,
			/obj/machinery/plumbing/liquid_pump = 1, //extracting chemicals from ground is one way of creation
			/obj/machinery/plumbing/disposer = 1,
			/obj/machinery/plumbing/buffer = 1,
			/obj/machinery/plumbing/synthesizer/soda = 1,
			/obj/machinery/plumbing/synthesizer/beer = 1,
		),
		"Distributors" = list(
			/obj/machinery/duct = 1,
			/obj/machinery/plumbing/layer_manifold = 1,
			/obj/machinery/plumbing/input = 1,
			/obj/machinery/plumbing/filter = 1,
			/obj/machinery/plumbing/splitter = 1,
			/obj/machinery/plumbing/sender = 1,
			/obj/machinery/plumbing/output = 1,
			/obj/machinery/plumbing/sender = 1,
			/obj/machinery/plumbing/receiver = 1,
		),
		"Storage" = list(
			/obj/machinery/plumbing/tank = 1,
			/obj/machinery/plumbing/acclimator = 1,
			/obj/machinery/plumbing/bottler = 1,
			/obj/machinery/plumbing/pill_press = 1,
			/obj/machinery/iv_drip/plumbing = 1,
		),
		"Liquids" = list(
			/obj/structure/drain = 1,
			/obj/machinery/plumbing/floor_pump/input = 1,
			/obj/machinery/plumbing/floor_pump/output = 1,
			/obj/item/plunger = 1,
			/obj/structure/sink = 1,
			/obj/machinery/shower = 1,
		),
	)

/obj/item/construction/plumbing/admin/Initialize(mapload)
	. = ..()

	plumbing_design_types = admin_design_types

/*
/obj/item/construction/plumbing/admin/set_plumbing_designs()
	plumbing_design_types = list(
	/obj/machinery/duct = 0,
	/obj/item/plunger = 0,
	/obj/machinery/plumbing/input = 0,
	/obj/machinery/plumbing/output = 0,
	/obj/machinery/plumbing/tank = 0,

	/obj/machinery/plumbing/buffer = 0,
	/obj/machinery/plumbing/layer_manifold = 0,
	//Above are the most common machinery which is shown on the first cycle. Keep new additions below THIS line, unless they're probably gonna be needed alot
	/obj/machinery/plumbing/pill_press = 0,
	/obj/machinery/plumbing/acclimator = 0,
	/obj/machinery/plumbing/bottler = 0,
	/obj/machinery/plumbing/disposer = 0,
	/obj/machinery/plumbing/fermenter = 0,
	/obj/machinery/plumbing/filter = 0,

	/obj/machinery/plumbing/liquid_pump = 0,
	/obj/machinery/plumbing/splitter = 0,
	/obj/machinery/plumbing/sender = 0,
	/obj/machinery/plumbing/receiver = 0,
	/obj/machinery/iv_drip/plumbing = 0,
	/obj/machinery/plumbing/floor_pump/input = 0,
	/obj/machinery/plumbing/floor_pump/output = 0,
	/obj/structure/sink = 0,
	/obj/machinery/shower = 0,
	/obj/machinery/plumbing/growing_vat = 0,
	/obj/structure/drain/big = 0
)
*/

/obj/item/pipe_dispenser/bluespace/admin
	ranged_use_cost = 0
	upgrade_flags = RPD_UPGRADE_UNWRENCH

/obj/item/construction/rld/admin
	name = "管理员快速照明装置（RLD）"
	max_matter = INFINITY
	matter = INFINITY

/obj/item/holosign_creator/atmos/admin
	creation_time = 0
	max_signs = 100

/obj/item/holosign_creator/janibarrier/admin
	creation_time = 0
	max_signs = 100

/obj/item/holosign_creator/medical/admin
	creation_time = 0
	max_signs = 100

/obj/item/holosign_creator/admin
	icon_state = "signmaker_sec"
	creation_time = 0
	max_signs = 100

/obj/item/holosign_creator/cyborg/attack_self(mob/user)
	if(shock)
		to_chat(user, span_notice("你清除了所有激活的全息影像，并将投影器恢复为正常模式。"))
		holosign_type = /obj/structure/holosign/barrier/cyborg
		creation_time = 0
		for(var/sign in signs)
			qdel(sign)
		shock = 0
		return
	if(!shock)
		to_chat(user, span_warning("你清除了所有激活的全息影像，并使能量投影器过载！"))
		holosign_type = /obj/structure/holosign/barrier/cyborg/hacked
		creation_time = 0
		for(var/sign in signs)
			qdel(sign)
		shock = 1
		return

/obj/item/extinguisher/xl
	max_water = 500

/obj/item/extinguisher/advanced/xl
	max_water = 500

/obj/item/inducer/admin
	powerdevice = /obj/item/stock_parts/power_store/cell/infinite

/obj/item/cyborg_clamp
	name = "半机械人装卸夹钳"
	desc = "供货运半机械人使用的设备，可抬起物品并装入货舱，不会搬运活体。"
	icon = 'icons/obj/devices/mecha_equipment.dmi'
	icon_state = "mecha_clamp"
	tool_behaviour = TOOL_RETRACTOR
	item_flags = NOBLUDGEON
	flags_1 = NONE
	var/cargo_capacity = 8
	var/cargo = list()

/obj/item/cyborg_clamp/attack(mob/M, mob/user, def_zone)
	return

/obj/item/cyborg_clamp/interact_with_atom(atom/movable/target, mob/user, proximity)
	. = ..()
	if(!proximity)
		return FALSE
	if(isobj(target))
		var/obj/O = target
		if(!O.anchored)
			if(contents.len < cargo_capacity)
				user.visible_message("[user]抬起[target]，开始将其装入货舱。")
				O.anchored = TRUE
				if(do_after(user, 20, O))
					for(var/mob/chump in target.get_all_contents())
						to_chat(user, span_warning("错误：[target]内检测到活体，无法装载。"))
						O.anchored = initial(O.anchored)
						return
					for(var/obj/item/disk/nuclear/diskie in target.get_all_contents())
						to_chat(user, span_warning("错误：[target]内检测到核级授权装置，无法装载。"))
						O.anchored = initial(O.anchored)
						return
					if(contents.len < cargo_capacity) //check both before and after
						cargo += O
						O.forceMove(src)
						O.anchored = FALSE
						to_chat(user, span_notice("[target]已成功装载。"))
						playsound(loc, 'sound/effects/bin/bin_close.ogg', 50, 0)
					else
						to_chat(user, span_warning("货舱空间不足！最多可容纳[cargo_capacity]件物品！"))
						O.anchored = initial(O.anchored)
						return
				else
					O.anchored = initial(O.anchored)
			else
				to_chat(user, span_warning("货舱空间不足！最多可容纳[cargo_capacity]件物品！"))
		else
			to_chat(user, span_warning("[target]被牢牢固定住了！"))

/obj/item/cyborg_clamp/attack_self(mob/user)
	var/obj/chosen_cargo = input(user, "要卸下哪件物品？") as null|anything in cargo
	if(!chosen_cargo)
		return
	chosen_cargo.forceMove(get_turf(chosen_cargo))
	cargo -= chosen_cargo
	user.visible_message("[user]从货舱中卸下了[chosen_cargo]。")
	playsound(loc, 'sound/effects/bin/bin_close.ogg', 50, 0)

/obj/item/cyborg_clamp/Destroy()
	for(var/atom/movable/target in cargo)
		target.forceMove(get_turf(src))
	playsound(loc, 'sound/effects/bin/bin_close.ogg', 50, 0)
	return ..()

/obj/item/gripper
	name = "工程夹持器"
	desc = "一种简单的抓取工具，可操作电路板、气瓶、传送带等工程用品。按住Ctrl并点击可放下物品。"
	icon = 'modular_z121/icons/obj/121device.dmi'
	icon_state = "gripper"

	item_flags = NOBLUDGEON

	//Has a list of items that it can hold.
	var/list/can_hold = list(
		/obj/item/stack,
		/obj/item/construction,
		/obj/item/storage,
		/obj/item/inducer,
		/obj/item/analyzer,
		/obj/item/assembly,
		/obj/item/circuitboard,
		/obj/item/light,
		/obj/item/electronics,
		/obj/item/tank,
		/obj/item/conveyor_switch_construct,
		/obj/item/stack/conveyor,
		/obj/item/wallframe,
		/obj/item/vending_refill,
		/obj/item/stack/sheet,
		/obj/item/stack/tile,
		/obj/item/stack/rods,
		/obj/item/stock_parts
		)
	//Basically a blacklist for any subtypes above we dont want
	var/list/cannot_hold = null
		/*list(
		/obj/item/stack/sheet/mineral/plasma,
		/obj/item/stack/sheet/plasteel
		)*/

	var/obj/item/wrapped = null // Item currently being held.

// Used to drop whatever's in the gripper.
/obj/item/gripper/proc/drop_held(silent = FALSE)
	if(wrapped)
		wrapped.forceMove(get_turf(wrapped))
		if(!silent)
			to_chat(usr, span_notice("你放下了[wrapped]。"))
		modify_appearance(wrapped, FALSE)
		wrapped = null
		update_appearance()
		return TRUE
	return FALSE

/obj/item/gripper/proc/takeitem(obj/item/item, silent = FALSE)
	if(!silent)
		to_chat(usr, span_notice("你拾起了[item]。"))
	item.loc = src
	wrapped = item
	update_appearance()

/obj/item/gripper/pre_attack(atom/target, mob/living/silicon/robot/user, params)
	var/proximity = get_dist(user, target)
	if(proximity > 1)
		return

	if(!wrapped)
		for(var/obj/item/thing in src.contents)
			wrapped = thing
			break

	if(wrapped) //Already have an item.
		var/obj/item/item = wrapped
		drop_held(TRUE)
		//Temporary put wrapped into user so target's attackby() checks pass.
		item.loc = user

		//Pass the attack on to the target. This might delete/relocate wrapped.
		var/resolved = target.attackby(item, user, params)
		if(!resolved && item && target)
			item.interact_with_atom(target, user, proximity, params)
		//If wrapped was neither deleted nor put into target, put it back into the gripper.
		if(item && user && (item.loc == user))
			takeitem(item, TRUE)
			return
		else
			item = null
		return

	else if(isitem(target))
		var/obj/item/I = target
		var/grab = 0

		for(var/typepath in can_hold)
			if(istype(I,typepath))
				grab = 1
				for(var/badpath in cannot_hold)
					if(istype(I,badpath))
						if(!user.emagged)
							grab = 0
							continue

		//We can grab the item, finally.
		if(grab)
			takeitem(I)
			return
		else
			to_chat(user, span_danger("夹持器无法夹住[target]。"))

// Rare cases - meant to be handled by code\modules\mob\living\silicon\robot\robot.dm:584 and the weirdness of get_active_held_item() of borgs.
/obj/item/gripper/attack_self(mob/user)
	if(wrapped)
		wrapped.attack_self(user)
		return
	. = ..()

// Splitable items
/obj/item/gripper/click_alt(mob/user)
	if(wrapped)
		wrapped.click_alt(user)
		return
	. = ..()

// Even rarer cases
/obj/item/gripper/item_ctrl_click(mob/user)
	. = ..()
	if(wrapped)
		drop_held()

// At this point you're just kidding me, but have this one as well.
/obj/item/gripper/click_ctrl_shift(mob/user)
	if(wrapped)
		wrapped.click_ctrl_shift(user)
		return
	. = ..()

/obj/item/gripper/attack_secondary(mob/user)
	if(wrapped)
		wrapped.attack_secondary(user)
		return
	. = ..()

// Make it clear what we can do with it.
/obj/item/gripper/examine(mob/user)
	. = ..()
	if(wrapped)
		. += span_notice("它正夹着[icon2html(wrapped, user)] [wrapped]。")
		. += span_notice("检查小预览图即可查看所夹物品。")
		. += span_notice("尝试放下夹持器时，只会放下[wrapped]。")

// Resets vis_contents and if holding something, add it to vis_contents.
/obj/item/gripper/update_appearance(updates)
	. = ..()
	vis_contents = list()
	if(wrapped)
		modify_appearance(wrapped, TRUE)
		vis_contents += wrapped

// Generates the "minified" version of the item being held and adjust it's position.
/obj/item/gripper/proc/modify_appearance(obj/item, minify = FALSE)
	if(minify)
		var/matrix/new_transform = new
		//new_transform.Scale(0.5, 0.5)
		item.transform = new_transform
		//item.pixel_x = 8
		item.pixel_y = -4
		var/mutable_appearance/item_copy = new /mutable_appearance(item)
		item_copy.layer = FLOAT_LAYER
		item_copy.plane = FLOAT_PLANE
		. += item_copy
	else
		item.pixel_x = initial(pixel_x)
		item.pixel_y = initial(pixel_y)
		item.transform = new

// Clear references on being destroyed
/obj/item/Destroy()
	for(var/obj/item/gripper/gripper in vis_locs)
		if(gripper.wrapped == src)
			gripper.wrapped = null
		gripper.update_appearance()
	. = ..()

/obj/item/gripper/utility
	name = "半机械人通用机械臂"
	desc = "一种复杂的抓取工具，据说能操作一切物品。"
	icon_state = "gripper_utility"
	can_hold = list(
		/obj/item
		)

/mob/living/silicon/robot/get_active_held_item(get_gripper = FALSE)
	var/item = module_active
	// snowflake handler for the gripper
	if(istype(item, /obj/item/gripper) && !get_gripper)
		var/obj/item/gripper/G = item
		if(G.wrapped)
			if(G.wrapped.loc != G)
				G.wrapped = null
				return module_active
			item = G.wrapped
			return item
	return module_active

/obj/item/weldingtool/abductor/cyborg_unequip(mob/user)
	if(!isOn())
		return
	switched_on(user)

/obj/item/weldingtool/abductor/admin
	name = "外星焊接工具"
	max_fuel = 100

/obj/item/weldingtool/abductor/admin/process()
	if(get_fuel() <= max_fuel)
		reagents.add_reagent(/datum/reagent/fuel, 100)
	..()

/obj/item/surgical_processor/surgical_drapes
	name = "\improper 电子手术铺巾"
	desc = "纳米传讯牌电子手术铺巾,铺巾本身可以通过显影指导手术步骤,需要通过手术电脑下载更高级的手术."
	icon = 'icons/obj/medical/surgery_tools.dmi'
	icon_state = "surgical_drapes"
	lefthand_file = 'icons/mob/inhands/equipment/medical_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/equipment/medical_righthand.dmi'
	inhand_icon_state = "drapes"
	w_class = WEIGHT_CLASS_TINY
	attack_verb_continuous = list("拍打")
	attack_verb_simple = list("拍打")

/obj/item/surgical_processor/surgical_drapes/admin
	name = "\improper 科技手术铺巾"
	desc = "纳米传讯牌电子手术铺巾,铺巾本身可以通过显影指导手术步骤,这张铺巾已经下载了所有已知最先进的手术."

/obj/item/surgical_processor/surgical_drapes/Initialize(mapload)
	. = ..()
	AddElement(/datum/element/surgery_aid, name)

/obj/item/surgical_processor/surgical_drapes/admin
	loaded_surgeries = list(
		/datum/surgery_operation/basic/tend_wounds/combo/upgraded/master,
		/datum/surgery_operation/limb/bioware/cortex_folding,
		/datum/surgery_operation/limb/bioware/cortex_folding/mechanic,
		/datum/surgery_operation/limb/bioware/cortex_imprint,
		/datum/surgery_operation/limb/bioware/cortex_imprint/mechanic,
		/datum/surgery_operation/limb/bioware/ligament_hook,
		/datum/surgery_operation/limb/bioware/ligament_hook/mechanic,
		/datum/surgery_operation/limb/bioware/ligament_reinforcement,
		/datum/surgery_operation/limb/bioware/ligament_reinforcement/mechanic,
		/datum/surgery_operation/limb/bioware/muscled_veins,
		/datum/surgery_operation/limb/bioware/muscled_veins/mechanic,
		/datum/surgery_operation/limb/bioware/nerve_grounding,
		/datum/surgery_operation/limb/bioware/nerve_grounding/mechanic,
		/datum/surgery_operation/limb/bioware/nerve_splicing,
		/datum/surgery_operation/limb/bioware/nerve_splicing/mechanic,
		/datum/surgery_operation/limb/bioware/vein_threading,
		/datum/surgery_operation/limb/bioware/vein_threading/mechanic,
		/datum/surgery_operation/organ/brainwash,
		/datum/surgery_operation/organ/brainwash/mechanic,
		/datum/surgery_operation/organ/pacify,
		/datum/surgery_operation/organ/pacify/mechanic,
	)
/*
/obj/item/surgical_processor/surgical_drapes/admin/Initialize(mapload)
	. = ..()
	loaded_surgeries = list()
	var/list/req_tech_surgeries = subtypesof(/datum/surgery)
	for(var/datum/surgery/beep as anything in req_tech_surgeries)
		if(initial(beep.requires_tech))
			loaded_surgeries += beep
*/
/obj/item/gun/energy/recharge/kinetic_accelerator/cyborg/unicorn

/obj/item/gun/energy/recharge/kinetic_accelerator/cyborg/unicorn/give_gun_safeties()
	return

//PlasmaCUTTER
/obj/item/gun/energy/plasmacutter/unicorn
	can_charge = FALSE
	use_cyborg_cell = TRUE
	force = 15
	ammo_type = list(/obj/item/ammo_casing/energy/plasma/unicorn)

/obj/item/gun/energy/plasmacutter/unicorn/give_gun_safeties()
	return

/obj/item/ammo_casing/energy/plasma/unicorn
	projectile_type = /obj/projectile/plasma/unicorn
	delay = 15
	e_cost = 0

/obj/projectile/plasma/unicorn
	damage = 40 //SKYRAT EDIT CHANGE - ORIGINAL: 5
	range = 7
	mine_range = 2

//Extinguisher
#define EXTINGUISHER 0
#define RESIN_LAUNCHER 1
#define RESIN_FOAM 2

/obj/item/extinguisher/mini/cyborg
	name = "灭火喷嘴"
	desc = "连接半机械人供水系统的重型喷嘴。"
	icon = 'modular_z121/icons/obj/121device.dmi'
	icon_state = "atmos_nozzle_0"
	//inhand_icon_state = "nozzleatmos"
	//lefthand_file = 'icons/mob/inhands/equipment/mister_lefthand.dmi'
	//righthand_file = 'icons/mob/inhands/equipment/mister_righthand.dmi'
	safety = 0
	max_water = 5000
	power = 8
	force = 10
	precision = 1
	cooling_power = 5
	w_class = WEIGHT_CLASS_HUGE
	item_flags = ABSTRACT  // don't put in storage
	chem = /datum/reagent/water //holds no chems of its own, it takes from the tank.
	var/nozzle_modeX = 0
	var/metal_synthesis_cooldown = 0
	var/resin_cooldown = 0

/obj/item/extinguisher/mini/cyborg/attack_self(mob/user)
	switch(nozzle_modeX)
		if(EXTINGUISHER)
			nozzle_modeX = RESIN_LAUNCHER
			to_chat(user, span_notice("已切换至树脂发射器。"))
			icon_state = "atmos_nozzle_1"
			return
		if(RESIN_LAUNCHER)
			nozzle_modeX = RESIN_FOAM
			to_chat(user, span_notice("已切换至树脂泡沫喷射器。"))
			icon_state = "atmos_nozzle_2"
			return
		if(RESIN_FOAM)
			nozzle_modeX = EXTINGUISHER
			to_chat(user, span_notice("已切换至水基灭火器。"))
			icon_state = "atmos_nozzle_0"
			return
	return

/obj/item/extinguisher/mini/cyborg/interact_with_atom(atom/target, mob/user)
	if(AttemptRefill(target, user))
		return
	if(nozzle_modeX == EXTINGUISHER)
		..()
		return
	var/Adj = user.Adjacent(target)
	if(nozzle_modeX == RESIN_LAUNCHER)
		if(Adj)
			return //Safety check so you don't blast yourself trying to refill your tank
		var/datum/reagents/R = reagents
		if(R.total_volume < 100)
			to_chat(user, span_warning("使用树脂发射器至少需要100单位水！"))
			return
		if(resin_cooldown)
			to_chat(user, span_warning("树脂发射器仍在充能……"))
			return
		resin_cooldown = TRUE
		R.remove_all(100)
		var/obj/effect/resin_container/A = new (get_turf(src))
		log_game("[key_name(user)]在[AREACOORD(user)]使用了树脂发射器。")
		playsound(src,'sound/items/syringeproj.ogg',40,TRUE)
		for(var/a=0, a<5, a++)
			step_towards(A, target)
			sleep(2)
		A.Smoke()
		addtimer(VARSET_CALLBACK(src, resin_cooldown, FALSE), 0 SECONDS)
		return
	if(nozzle_modeX == RESIN_FOAM)
		if(!Adj|| !isturf(target))
			return
		for(var/S in target)
			if(istype(S, /obj/effect/particle_effect/fluid/foam/metal/resin) || istype(S, /obj/structure/foamedmetal/resin))
				to_chat(user, span_warning("这里已经有树脂了！"))
				return
		if(metal_synthesis_cooldown < 5)
			var/obj/effect/particle_effect/fluid/foam/metal/resin/foam = new (get_turf(target))
			foam.group.target_size = 0
			metal_synthesis_cooldown++
			addtimer(CALLBACK(src, PROC_REF(reduce_metal_synth_cooldown)), 0 SECONDS)
		else
			to_chat(user, span_warning("树脂泡沫混合物仍在合成中……"))
			return

/obj/item/extinguisher/mini/cyborg/proc/reduce_metal_synth_cooldown()
	metal_synthesis_cooldown--

#undef EXTINGUISHER
#undef RESIN_LAUNCHER
#undef RESIN_FOAM

/obj/item/storage/bag/trash/bluespace/cyborg/vi
	name = "超级无底垃圾袋"

/obj/item/storage/bag/trash/bluespace/cyborg/vi/Initialize(mapload)
	. = ..()
	atom_storage.max_specific_storage = WEIGHT_CLASS_NORMAL
	atom_storage.max_total_storage = 300
	atom_storage.max_slots = 300
/*
//BORGBeaker
/obj/item/borg/apparatus/beaker/vi
	name = "beaker storage apparatus"
	desc = "A special apparatus for carrying beakers without spilling the contents."
	icon_state = "borg_beaker_apparatus"
	storable = list(/obj/item/reagent_containers/cup,
					/obj/item/reagent_containers/condiment)
*/
/obj/item/soap/nanotrasen/cyborg/omega
	name = "欧米伽肥皂"
	desc = "人类已知最先进的肥皂，细菌末日的开端。"
	icon_state = "soapomega"
	worn_icon_state = "soapomega"
	cleanspeed = 0.3 SECONDS //Only the truest of mind soul and body get one of these

/obj/item/borg/cookbook/vi
	var/datum/component/personal_crafting/crafting

/obj/item/borg/cookbook/vi/Initialize(mapload)
	. = ..()
	crafting = AddComponent(/datum/component/personal_crafting)
	crafting.forced_mode = FALSE
	crafting.mode = FALSE

/obj/item/borg/cookbook/vi/attack_self(mob/user, modifiers)
	. = ..()
	crafting.ui_interact(user)

/obj/item/borg/cookbook/vi/dropped(mob/user, silent)
	SStgui.close_uis(crafting)
	return ..()
