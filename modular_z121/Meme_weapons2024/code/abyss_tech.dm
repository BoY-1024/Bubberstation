











#define GUN_SAFETY_FLAGS_DEFAULT 0
#define GUN_SAFETY_HAS_SAFETY 1
#define GUN_SAFETY_ENABLED 2


// The unsupported cargo-company contract is omitted; weapon behavior remains.

/obj/item/gun/ballistic/automatic/abyss
	var/foldable = FALSE
	/// Whether the stock is folded or not.
	var/folded = TRUE
	/// The sound it makes when you fold a stock
	var/fold_open_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/ak_stock_open.ogg'
	/// The sound it makes when you unfold a stock.
	var/fold_close_sound = 'modular_z121/Meme_weapons2024/sound/weapons/guns/rifle/ak_stock_close.ogg'
	/// Every time you fiddle with the stock
	var/fiddle = 'modular_z121/Meme_weapons2024/sound/weapons/guns/weap_away.ogg'
	var/datum/action/item_action/toggle_stock/toggle_stock_action






/obj/item/gun/ballistic/automatic/abyss/ui_action_click(mob/user, actiontype) /// Allows users to spew facts
	if(istype(actiontype, /datum/action/item_action/toggle_stock))
		toggle_stock(user)
	else
		return ..()

/obj/item/gun/ballistic/automatic/abyss/proc/toggle_stock(mob/user)
	folded = !folded
	if(!foldable)
		return
	playsound(src, fiddle, 68, FALSE)
	if(!do_after(user, 0.5 SECONDS, src))
		return
	if(folded)
		w_class = WEIGHT_CLASS_BULKY
		recoil = 0.25
		playsound(src, fold_close_sound, 80, FALSE)
		to_chat(user, span_notice("你折叠了[src]的枪托。"))
	else
		w_class = WEIGHT_CLASS_NORMAL
		recoil = 2
		playsound(src, fold_open_sound, 80, FALSE)
		to_chat(user, span_notice("你展开了[src]的枪托。"))
	update_appearance()
	update_icon()

/obj/item/gun/ballistic/automatic/abyss/update_overlays()
	. = ..()
	if(foldable)
		//generally, the stock should be below everything else, otherwise it will look very fucked
		var/image/folding_image = image(icon, src, "[base_icon_state]_[!folded ? "folded" : "unfolded"]")
		folding_image.layer = layer - 1
		. += folding_image

/datum/action/item_action/toggle_stock
	name = "切换枪托状态"
	button_icon = 'modular_z121/Meme_weapons2024/icons/obj/guns/smg.dmi'
	button_icon_state = "stock"

/obj/item/gun/ballistic/automatic/abyss/Initialize(mapload)
    . = ..()
    if(foldable)
        toggle_stock_action = new(src)

/obj/item/gun/ballistic/automatic/abyss/equipped(mob/user, slot)
    . = ..()
    if(foldable)
        toggle_stock_action.Grant(user)

/obj/item/gun/ballistic/automatic/abyss/dropped(mob/user)
    . = ..()
    if(foldable)
        toggle_stock_action.Remove(user)

