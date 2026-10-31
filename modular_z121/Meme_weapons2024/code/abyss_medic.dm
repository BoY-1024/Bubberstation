/obj/item/storage/medkit/abyss_tech
	name = "深渊医疗箱"
	desc = "用来处理那些严重伤痛的急救医疗箱。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/firstaid.dmi'
	icon_state = "morango"
	inhand_icon_state = "medkit"
	throw_speed = 3
	throw_range = 7

/obj/item/storage/medkit/abyss_tech/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/stack/medical/wrap/gauze = 1,
		//obj/item/stack/medical/splint = 1,
		/obj/item/stack/medical/suture = 1,
		/obj/item/storage/pill_bottle/mining = 1,
		/obj/item/storage/pill_bottle/lsd = 1,
		/obj/item/storage/pill_bottle/stimulant = 1,
		/obj/item/reagent_containers/hypospray/medipen = 1,
	)
	generate_items_inside(items_inside,src)

/obj/item/storage/medkit/ifak
	name = "IFAK个人急救包"
	desc = "一个个人急救包，不知道为什么会在这里。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/firstaid.dmi'
	icon_state = "IFAK"
	inhand_icon_state = "ifak"
	righthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_righthand.dmi'
	lefthand_file = 'modular_z121/Meme_weapons2024/icons/mob/inhands/clothing/clothing_lefthand.dmi'
	throw_speed = 3
	throw_range = 7
	var/zip_slowdown = 0
	/// If this bag is zipped (contents hidden) up or not
	/// Starts enabled so you're forced to interact with it to "get" it
	var/zipped_up = TRUE

/obj/item/storage/medkit/ifak/Initialize(mapload)
	. = ..()
	atom_storage.max_specific_storage = WEIGHT_CLASS_NORMAL //holds the same equipment as a medibelt
	atom_storage.max_slots = 12
	atom_storage.max_total_storage = 24

/obj/item/storage/medkit/ifak/PopulateContents()
	if(empty)
		return
	var/static/items_inside = list(
		/obj/item/healthanalyzer = 1,
		/obj/item/stack/medical/wrap/gauze/twelve = 1,
		//obj/item/stack/medical/splint/twelve = 1, //SKYRAT EDIT ADDITION - MEDICAL
		/obj/item/stack/medical/bruise_pack = 1,
		/obj/item/stack/medical/mesh = 1,
		/obj/item/reagent_containers/hypospray/medipen = 1,
		/obj/item/storage/pill_bottle/mining = 1,
		/obj/item/surgical_drapes = 1,
		/obj/item/scalpel = 1,
		/obj/item/hemostat = 1,
		/obj/item/cautery = 1,
		/obj/item/storage/pill_bottle/probital = 1,
	)
	generate_items_inside(items_inside,src)

/obj/item/storage/medkit/ifak/Initialize(mapload)
	. = ..()
	set_zipper(TRUE)

/obj/item/storage/medkit/ifak/update_desc(updates)
	. = ..()
	desc = "[initial(desc)]<br>[zipped_up ? "拉链已拉上，无法取用里面的物品。" : "拉链已打开，行动时更不方便。"]"

/obj/item/storage/medkit/ifak/attack_self(mob/user, modifiers)
	if(loc != user) // God fuck TK
		return ..()
	if(zipped_up)
		return attack_hand(user, modifiers)
	else
		return attack_hand_secondary(user, modifiers)

/obj/item/storage/medkit/ifak/attack_self_secondary(mob/user, modifiers)
	attack_self(user, modifiers)
	return ..()

// If we're zipped, click to unzip
/obj/item/storage/medkit/ifak/attack_hand(mob/user, list/modifiers)
	if(loc != user)
		// Hacky, but please don't be cringe yeah?
		atom_storage.silent = TRUE
		. = ..()
		atom_storage.silent = initial(atom_storage.silent)
		return
	if(!zipped_up)
		return ..()

	balloon_alert(user, "正在拉开拉链……")
	playsound(src, 'sound/items/zip/un_zip.ogg', 100, FALSE)
	var/datum/callback/can_unzip = CALLBACK(src, PROC_REF(zipper_matches), TRUE)
	if(!do_after(user, 2.1 SECONDS, src, extra_checks = can_unzip))
		user.balloon_alert(user, "未能拉开拉链！")
		return
	balloon_alert(user, "拉链已打开")
	set_zipper(FALSE)
	return TRUE

// Vis versa
/obj/item/storage/medkit/ifak/attack_hand_secondary(mob/user, list/modifiers)
	if(loc != user)
		return ..()
	if(zipped_up)
		return SECONDARY_ATTACK_CALL_NORMAL

	balloon_alert(user, "正在拉上拉链……")
	playsound(src, 'sound/items/zip/zip_up.ogg', 100, FALSE)
	var/datum/callback/can_zip = CALLBACK(src, PROC_REF(zipper_matches), FALSE)
	if(!do_after(user, 0.5 SECONDS, src, extra_checks = can_zip))
		user.balloon_alert(user, "未能拉上拉链！")
		return SECONDARY_ATTACK_CANCEL_ATTACK_CHAIN
	balloon_alert(user, "拉链已拉上")
	set_zipper(TRUE)
	return SECONDARY_ATTACK_CONTINUE_CHAIN

/// Checks to see if the zipper matches the passed in state
/// Returns true if so, false otherwise
/obj/item/storage/medkit/ifak/proc/zipper_matches(matching_value)
	return zipped_up == matching_value

/obj/item/storage/medkit/ifak/proc/set_zipper(new_zip)
	zipped_up = new_zip
	SEND_SIGNAL(src, COMSIG_DUFFEL_ZIP_CHANGE, new_zip)
	if(zipped_up)
		slowdown = initial(slowdown)
		atom_storage.locked = STORAGE_SOFT_LOCKED
		atom_storage.display_contents = FALSE
		atom_storage.close_all()
	else
		slowdown = zip_slowdown
		atom_storage.locked = STORAGE_NOT_LOCKED
		atom_storage.display_contents = TRUE

	if(isliving(loc))
		var/mob/living/wearer = loc
		wearer.update_equipment_speed_mods()
	update_appearance()
