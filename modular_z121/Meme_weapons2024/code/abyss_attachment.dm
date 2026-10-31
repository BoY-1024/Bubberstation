// Slot defines for the gun.
/// The gun barrel slot.
#define GUN_SLOT_MUZZLE "muzzle"
/// The gun underbarrel slot.
#define GUN_SLOT_GRIP "grip"
/// The gun rail slot.
#define GUN_SLOT_SCOPE "scope"
/// Unique slots, can hold as many as you want.
#define GUN_SLOT_NONE "none"
#define GUN_SLOT_UNDER "under"

/obj/item/gun/ballistic/automatic/abyss
	/// What slots does this gun have?
	var/attachment_slots = list(GUN_SLOT_MUZZLE, GUN_SLOT_GRIP, GUN_SLOT_SCOPE, GUN_SLOT_NONE, GUN_SLOT_UNDER)
	/// A list of attached upgrades
	var/list/abyssattachments = list()
	/// Icon file for attachments
	var/attachment_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/nice_condom.dmi'

/obj/item/gun/ballistic/automatic/abyss/update_overlays()
    . = ..()
    for(var/obj/item/abyss_gun_attachment/abyss_gun_attachment in abyssattachments)
        var/overlay_state = "[icon_state]_[abyss_gun_attachment.attachment_overlay_icon_state]"
        var/mutable_appearance/attachment_appearance = mutable_appearance(attachment_icon, overlay_state)
        . += attachment_appearance

/obj/item/gun/ballistic/automatic/abyss/Destroy()
	if(abyssattachments.len)
		for(var/obj/item/iterating_item in abyssattachments)
			qdel(iterating_item)
		abyssattachments = null
	return ..()

/obj/item/gun/ballistic/automatic/abyss/click_alt(mob/user)
	. = ..()
	if(can_interact(user))
		var/obj/item/abyss_gun_attachment/to_remove = input(user, "请选择要拆卸的配件。", "拆卸配件") as null|obj in sort_names(abyssattachments)
		if(!to_remove)
			return
		remove_attachment(to_remove, user)

/obj/item/gun/ballistic/automatic/abyss/proc/remove_all_attachments()
	if(abyssattachments.len)
		for(var/obj/item/abyss_gun_attachment/attachment in abyssattachments)
			attachment.remove_attachment(src)
			attachment.forceMove(get_turf(src))
			abyssattachments -= attachment
		update_appearance()

/obj/item/gun/ballistic/automatic/abyss/examine(mob/user)
	. = ..()
	if(abyssattachments.len)
		for(var/obj/item/abyss_gun_attachment/abyss_gun_attachment in abyssattachments)
			. += span_notice("已安装[abyss_gun_attachment.name]。")
		. += span_notice("按住Alt并点击可拆卸配件。")

/obj/item/gun/ballistic/automatic/abyss/proc/add_attachment(obj/item/abyss_gun_attachment/abyss_gun_attachment, mob/living/user)
	if(is_type_in_list(abyss_gun_attachment, abyssattachments))
		to_chat(user, span_warning("[src]已经装有[abyss_gun_attachment]了！"))
		return FALSE
	if(!(abyss_gun_attachment.slot in attachment_slots))
		to_chat(user, span_warning("[src]无法安装[abyss_gun_attachment]！"))
		return FALSE
	for(var/obj/item/abyss_gun_attachment/iterating_attachment in abyssattachments)
		if(is_type_in_list(abyss_gun_attachment, iterating_attachment.incompatable_attachments))
			to_chat(user, span_warning("[abyss_gun_attachment]与[iterating_attachment]不兼容！"))
			return FALSE
		if(iterating_attachment.slot != GUN_SLOT_UNIQUE && iterating_attachment.slot == abyss_gun_attachment.slot)
			to_chat(user, span_warning("[abyss_gun_attachment]与[iterating_attachment]不能安装在同一个槽位！"))
			return FALSE
	abyssattachments += abyss_gun_attachment
	abyss_gun_attachment.forceMove(src)
	abyss_gun_attachment.run_attachment(src)
	to_chat(user, span_notice("你成功将[abyss_gun_attachment]安装到了[src]上！"))
	playsound(src, 'sound/effects/structure_stress/pop2.ogg', 70, TRUE)
	return TRUE

/obj/item/gun/ballistic/automatic/abyss/proc/remove_attachment(obj/item/abyss_gun_attachment/abyss_gun_attachment, mob/living/user)
	to_chat(user, span_notice("你从[src]上拆下了[abyss_gun_attachment]！"))
	playsound(src, 'sound/items/tools/screwdriver.ogg', 70)
	abyss_gun_attachment.forceMove(get_turf(src))
	abyssattachments -= abyss_gun_attachment
	abyss_gun_attachment.remove_attachment(src)
	user?.put_in_hands(abyss_gun_attachment)
	update_appearance()

/obj/item/gun/ballistic/automatic/abyss/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	if (.)
		return
	if(istype(attacking_item, /obj/item/abyss_gun_attachment))
		add_attachment(attacking_item, user)


/obj/item/gun/ballistic/automatic/shotgun/abyss
	/// What slots does this gun have?
	var/attachment_slots = list(GUN_SLOT_MUZZLE, GUN_SLOT_GRIP, GUN_SLOT_SCOPE, GUN_SLOT_NONE, GUN_SLOT_UNDER)
	/// A list of attached upgrades
	var/list/abyssattachments = list()
	/// Icon file for attachments
	var/attachment_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/nice_condom.dmi'

/obj/item/gun/ballistic/automatic/shotgun/abyss/update_overlays()
    . = ..()
    for(var/obj/item/abyss_gun_attachment/abyss_gun_attachment in abyssattachments)
        var/overlay_state = "[icon_state]_[abyss_gun_attachment.attachment_overlay_icon_state]"
        var/mutable_appearance/attachment_appearance = mutable_appearance(attachment_icon, overlay_state)
        . += attachment_appearance

/obj/item/gun/ballistic/automatic/shotgun/abyss/Destroy()
	if(abyssattachments.len)
		for(var/obj/item/iterating_item in abyssattachments)
			qdel(iterating_item)
		abyssattachments = null
	return ..()

/obj/item/gun/ballistic/automatic/shotgun/abyss/click_alt(mob/user)
	. = ..()
	if(can_interact(user))
		var/obj/item/abyss_gun_attachment/to_remove = input(user, "请选择要拆卸的配件。", "拆卸配件") as null|obj in sort_names(abyssattachments)
		if(!to_remove)
			return
		remove_attachment(to_remove, user)

/obj/item/gun/ballistic/automatic/shotgun/abyss/proc/remove_all_attachments()
	if(abyssattachments.len)
		for(var/obj/item/abyss_gun_attachment/attachment in abyssattachments)
			attachment.remove_attachment(src)
			attachment.forceMove(get_turf(src))
			abyssattachments -= attachment
		update_appearance()

/obj/item/gun/ballistic/automatic/shotgun/abyss/examine(mob/user)
	. = ..()
	if(abyssattachments.len)
		for(var/obj/item/abyss_gun_attachment/abyss_gun_attachment in abyssattachments)
			. += span_notice("已安装[abyss_gun_attachment.name]。")
		. += span_notice("按住Alt并点击可拆卸配件。")

/obj/item/gun/ballistic/automatic/shotgun/abyss/proc/add_attachment(obj/item/abyss_gun_attachment/abyss_gun_attachment, mob/living/user)
	if(is_type_in_list(abyss_gun_attachment, abyssattachments))
		to_chat(user, span_warning("[src]已经装有[abyss_gun_attachment]了！"))
		return FALSE
	if(!(abyss_gun_attachment.slot in attachment_slots))
		to_chat(user, span_warning("[src]无法安装[abyss_gun_attachment]！"))
		return FALSE
	for(var/obj/item/abyss_gun_attachment/iterating_attachment in abyssattachments)
		if(is_type_in_list(abyss_gun_attachment, iterating_attachment.incompatable_attachments))
			to_chat(user, span_warning("[abyss_gun_attachment]与[iterating_attachment]不兼容！"))
			return FALSE
		if(iterating_attachment.slot != GUN_SLOT_UNIQUE && iterating_attachment.slot == abyss_gun_attachment.slot)
			to_chat(user, span_warning("[abyss_gun_attachment]与[iterating_attachment]不能安装在同一个槽位！"))
			return FALSE
	abyssattachments += abyss_gun_attachment
	abyss_gun_attachment.forceMove(src)
	abyss_gun_attachment.run_attachment(src)
	to_chat(user, span_notice("你成功将[abyss_gun_attachment]安装到了[src]上！"))
	playsound(src, 'sound/effects/structure_stress/pop2.ogg', 70, TRUE)
	return TRUE

/obj/item/gun/ballistic/automatic/shotgun/abyss/proc/remove_attachment(obj/item/abyss_gun_attachment/abyss_gun_attachment, mob/living/user)
	to_chat(user, span_notice("你从[src]上拆下了[abyss_gun_attachment]！"))
	playsound(src, 'sound/items/tools/screwdriver.ogg', 70)
	abyss_gun_attachment.forceMove(get_turf(src))
	abyssattachments -= abyss_gun_attachment
	abyss_gun_attachment.remove_attachment(src)
	user?.put_in_hands(abyss_gun_attachment)
	update_appearance()

/obj/item/gun/ballistic/automatic/shotgun/abyss/attackby(obj/item/attacking_item, mob/user, params)
	. = ..()
	if (.)
		return
	if(istype(attacking_item, /obj/item/abyss_gun_attachment))
		add_attachment(attacking_item, user)
