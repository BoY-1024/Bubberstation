/obj/item/abyss_gun_attachment
	name = "深渊枪械配件"
	desc = "如果你看到了这个，请联系程序员。"
	icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/shotgun.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	/// The attachment overlay icon state.
	var/attachment_overlay_icon_state
	/// Any incompatable upgrade types.
	var/list/incompatable_attachments = list()
	/// The slot this attachment is installed in.
	var/slot = GUN_SLOT_UNIQUE

/obj/item/abyss_gun_attachment/proc/run_attachment(obj/item/gun/ballistic/automatic/abyss)
	SHOULD_CALL_PARENT(TRUE)
	abyss.update_appearance()
	abyss.chambered?.newshot()
	return

/obj/item/abyss_gun_attachment/proc/process_attachment(obj/item/gun/ballistic/automatic/abyss)
	return

/obj/item/abyss_gun_attachment/proc/process_fire(obj/item/gun/ballistic/automatic/abyss, obj/item/ammo_casing/chambered)
	return

/obj/item/abyss_gun_attachment/proc/remove_attachment(obj/item/gun/ballistic/automatic/abyss)
	SHOULD_CALL_PARENT(TRUE)
	abyss.update_appearance()
	abyss.chambered?.newshot()
	return

/*SUPPRESSOR ATTACHMENT

//Makes operators operate operatingly.
*/

/obj/item/abyss_gun_attachment/suppressor
	name = "消音器" // sure it makes no sense but its cool
	desc = "缓慢而轻柔，生命就这样被夺走。"
	icon_state = "silencer"
	slot = GUN_SLOT_MUZZLE
	attachment_overlay_icon_state = "silencer"

/obj/item/abyss_gun_attachment/suppressor/run_attachment(obj/item/gun/ballistic/automatic/abyss)
	. = ..()
	abyss.suppressed = TRUE

/obj/item/abyss_gun_attachment/suppressor/remove_attachment(obj/item/gun/ballistic/automatic/abyss)
	. = ..()
	abyss.suppressed = null
