/obj/item/gun/ballistic/pistol/receiver
	var/unjam_chance = 35
	var/jamming_increment = 2
	var/jammed = FALSE
	var/can_jam = TRUE
	var/jamming_chance = 25


/obj/item/gun/ballistic/pistol/receiver/process_fire(atom/target, mob/living/user, message = TRUE, params = null, zone_override = "", bonus_spread = 0)
	if(can_jam)
		if(chambered?.loaded_projectile)
			if(prob(jamming_chance))
				jammed = TRUE
			jamming_chance += jamming_increment
			jamming_chance = clamp (jamming_chance, 0, 100)
	return ..()

/obj/item/gun/ballistic/pistol/receiver/can_trigger_gun(mob/living/user, akimbo_usage)
	. = ..()
	if(jammed)
		balloon_alert(user, "卡壳了！")
		playsound(user,'sound/items/weapons/jammed.ogg', 75, TRUE)
		return FALSE

/obj/item/gun/ballistic/pistol/receiver/attack_self(mob/user)
	if(can_jam)
		if(jammed)
			if(prob(unjam_chance))
				jammed = FALSE
				unjam_chance = 10
			else
				unjam_chance += 10
				balloon_alert(user, "卡壳了！")
				playsound(user,'sound/items/weapons/jammed.ogg', 75, TRUE)
				return FALSE
	..()

/obj/item/gun/ballistic/pistol/receiver/attackby(obj/item/item, mob/user, params)
	. = ..()
	if(can_jam)
		if(bolt_locked)
			if(istype(item, /obj/item/gun_maintenance_supplies))
				if(do_after(user, 10 SECONDS, target = src))
					user.visible_message(span_notice("[user]完成了对[src]的维护。"))
					jamming_chance = 10
					qdel(item)

/obj/item/gun/ballistic/pistol/receiver/blow_up(mob/user)
	. = FALSE
	if(chambered?.loaded_projectile)
		process_fire(user, user, FALSE)
		. = TRUE
