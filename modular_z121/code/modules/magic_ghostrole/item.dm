/obj/item/assembly/flash/amnestics
	name = "记忆清除闪光"
	desc = "如果我们不想让帷幕破碎，就要使用这些。只要对目击者使用这个，他们就会忘记所知的一切。"
	icon = 'modular_z121/icons/obj/121device.dmi'
	icon_state = "amnestics"
	flashing_overlay = "amnestics_f"
	light_color = LIGHT_COLOR_INTENSE_RED
	cooldown = 20

/obj/item/assembly/flash/amnestics/burn_out()
	return

/obj/item/assembly/flash/amnestics/flash_mob(mob/living/flashed, mob/user, confusion_duration = 5 SECONDS, targeted = TRUE, generic_message = FALSE, extra_log =  null)
	if(user)
		log_combat(user, flashed, "[targeted? "memorywiper-flashed(targeted)" : "memorywiper-flashed(AOE)"] [extra_log]", src)
	else //caused by emp/remote signal
		flashed.log_message("was [targeted? "memorywiper-flashed(targeted)" : "memorywiper-flashed(AOE)"] [extra_log]", LOG_ATTACK)

	if(generic_message && flashed != user)
		to_chat(flashed, span_notice("[src] 发出刺眼的光..."))

	if(!flashed.flash_act(1, override_blindness_check = targeted, affect_silicon = TRUE))
		if(targeted)
			if(user)
				user.visible_message(span_warning("[user]没能用闪光器闪瞎[flashed]！"), span_warning("你没能抹去[flashed]的记忆！"))
			else
				to_chat(flashed, span_danger("[src]没能闪瞎你！"))
		return FALSE

	if(!targeted)
		flashed.adjust_confusion_up_to(confusion_duration, confusion_duration * 2)
		return TRUE

	if(targeted)
		to_chat(flashed, "你被[src]闪瞎了！")
		to_chat(flashed, span_hypnophrase("你在哪?你想不起来你最近经历过的事情了。"))
		to_chat(flashed, span_notice("(你被记忆删除!你失去了轮班期间经历事情的记忆。)"))
		flashed.adjust_confusion_up_to(confusion_duration * 2, confusion_duration * 2)
		flashed.adjust_dizzy_up_to(20 SECONDS, 40 SECONDS)
		flashed.adjust_drowsiness_up_to(5 SECONDS, 10 SECONDS)
		flashed.adjust_pacifism(10 SECONDS)
		return TRUE

	if(user)
		user.visible_message(span_danger("[user]用闪光器闪瞎了[flashed]！"), span_danger("你抹去了[flashed]的记忆！"))
