//Override thing from Monkey. Lets us tie bowties.
/obj/item/clothing/neck/bunny
	name = "领结颈圈"
	desc = "一条配有颈圈的精致领结，看起来很时髦！"
	icon = 'modular_z121/icons/obj/clothing/bunny/neck/bunnyneck.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/neck/bunnyneck.dmi'
	icon_state = "bowtie_collar_tied"
	var/tie_type = "tie_greyscale"
	greyscale_colors = "#ffffff#39393f"
	greyscale_config = /datum/greyscale_config/bowtie_collar
	greyscale_config_worn = /datum/greyscale_config/bowtie_collar_worn
	flags_1 = null
	alternate_worn_layer = UNDER_SUIT_LAYER
	/// All ties start untied unless otherwise specified
	var/is_tied = FALSE
	/// How long it takes to tie the tie
	var/tie_timer = 4 SECONDS
	/// Is this tie a clip-on, meaning it does not have an untied state?
	var/clip_on = FALSE

/obj/item/clothing/neck/bunny/Initialize(mapload)
	. = ..()
	if(!clip_on)
		update_appearance(UPDATE_ICON)
	register_context()

/obj/item/clothing/neck/bunny/examine(mob/user)
	. = ..()
	. += span_notice("领结可以戴在外套上方或下方，按住Alt并右键点击可切换。")
	if(clip_on)
		. += span_notice("仔细看就能发现，这其实是一个伪装巧妙的夹式领结。")
	else if(!is_tied)
		. += span_notice("按住Alt并点击可系好领结。")
	else
		. += span_notice("按住Alt并点击可解开领结。")

/obj/item/clothing/neck/bunny/click_alt(mob/user)
	if(clip_on)
		return NONE
	to_chat(user, span_notice("你集中注意力，开始[is_tied ? "解开" : "系好"][src]……"))
	var/tie_timer_actual = tie_timer
	// Mirrors give you a boost to your tying speed. I realize this stacks and I think that's hilarious.
	for(var/obj/structure/mirror/reflection in view(2, user))
		tie_timer_actual *= 0.8
	// Heads of staff are experts at tying their ties.
	if(HAS_TRAIT(user, TRAIT_FAST_TYING))
		tie_timer_actual *= 0.5
	// Tie/Untie our tie
	if(!do_after(user, tie_timer_actual))
		to_chat(user, span_notice("你一分心，手指便从[src]上滑开了。"))
		return CLICK_ACTION_BLOCKING
	// Clumsy & Dumb people have trouble tying their ties.
	if((HAS_TRAIT(user, TRAIT_CLUMSY) || HAS_TRAIT(user, TRAIT_DUMB)) && prob(50))
		to_chat(user, span_notice("你怎么也抓不稳[src]！"))
		return CLICK_ACTION_BLOCKING
	// Success!
	is_tied = !is_tied
	user.visible_message(
		span_notice("[user]整理了一下领结[HAS_TRAIT(user, TRAIT_BALD) ? "" : "，并用手抚过头发"]。"),
		span_notice("你成功[is_tied ? "系好了" : "解开了"][src]！"),
	)
	update_appearance(UPDATE_ICON)
	user.update_clothing(ITEM_SLOT_NECK)
	return CLICK_ACTION_SUCCESS

/obj/item/clothing/neck/bunny/click_alt_secondary(mob/user)
	alternate_worn_layer = (alternate_worn_layer == initial(alternate_worn_layer) ? NONE : initial(alternate_worn_layer))
	user.update_clothing(ITEM_SLOT_NECK)
	balloon_alert(user, "戴在外套[alternate_worn_layer == initial(alternate_worn_layer) ? "下方" : "上方"]")

/obj/item/clothing/neck/bunny/update_icon()
	. = ..()
	if(clip_on)
		return
	// Normal strip & equip delay, along with 2 second self equip since you need to squeeze your head through the hole.
	if(is_tied)
		icon_state = "[tie_type]_tied"
		strip_delay = 4 SECONDS
		equip_delay_other = 4 SECONDS
		equip_delay_self = 2 SECONDS
	else // Extremely quick strip delay, it's practically a ribbon draped around your neck
		icon_state = "[tie_type]_untied"
		strip_delay = 1 SECONDS
		equip_delay_other = 1 SECONDS
		equip_delay_self = 0

/obj/item/clothing/neck/bunny/add_context(atom/source, list/context, obj/item/held_item, mob/user)
	. = ..()
	context[SCREENTIP_CONTEXT_ALT_RMB] = "戴在外套[alternate_worn_layer == initial(alternate_worn_layer) ? "上方" : "下方"]"
	if(clip_on)
		return CONTEXTUAL_SCREENTIP_SET
	if(is_tied)
		context[SCREENTIP_CONTEXT_ALT_LMB] = "解开"
	else
		context[SCREENTIP_CONTEXT_ALT_LMB] = "系好"
	return CONTEXTUAL_SCREENTIP_SET

/obj/item/clothing/neck/bunny/worn_overlays(mutable_appearance/standing, isinhands)
	. = ..()
	var/mob/living/carbon/human/wearer = loc
	if(!ishuman(wearer) || !wearer.w_uniform)
		return
	var/obj/item/clothing/under/undershirt = wearer.w_uniform
	if(!istype(undershirt) || !LAZYLEN(undershirt.attached_accessories))
		return
	if(alternate_worn_layer)
		. += undershirt.get_accessory_overlays()

//ALL BUNNY STUFF BY DimWhat OF MONKEESTATION

/obj/item/clothing/neck/bunny/bunnytie
	name = "领结颈圈"
	desc = "一条配有颈圈的精致领结，看起来很时髦！"
	icon = 'modular_z121/icons/obj/clothing/bunny/neck/bunnyneck.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/neck/bunnyneck.dmi'
	icon_state = "bowtie_collar_tied"
	tie_type = "bowtie_collar"
	greyscale_colors = "#ffffff#39393f"
	greyscale_config = /datum/greyscale_config/bowtie_collar
	greyscale_config_worn = /datum/greyscale_config/bowtie_collar_worn
	flags_1 = null
	alternate_worn_layer = UNDER_SUIT_LAYER

/obj/item/clothing/neck/bunny/bunnytie/greyscale
	name = "领结颈圈"
	desc = "一条配有颈圈的精致领结，看起来很时髦！"
	icon = 'modular_z121/icons/obj/clothing/bunny/neck/bunnyneck.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/neck/bunnyneck.dmi'
	icon_state = "bowtie_collar_tied"
	tie_type = "bowtie_collar"
	greyscale_colors = "#ffffff#39393f"
	greyscale_config = /datum/greyscale_config/bowtie_collar
	greyscale_config_worn = /datum/greyscale_config/bowtie_collar_worn
	flags_1 = IS_PLAYER_COLORABLE_1
	alternate_worn_layer = UNDER_SUIT_LAYER
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/syndicate
	name = "血红领结颈圈"
	desc = "一条配有红色颈圈的精致领结，看起来阴森森的……"
	icon_state = "bowtie_collar_syndi_tied"
	tie_type = "bowtie_collar_syndi"
	armor_type = /datum/armor/large_scarf_syndie
	tie_timer = 2 SECONDS //Tactical tie
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/magician
	name = "魔术师领结颈圈"
	desc = "一条配有颈圈的精致金色领结，看起来充满魔力！"
	icon_state = "bowtie_collar_wiz_tied"
	tie_type = "bowtie_collar_wiz"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	custom_price = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/centcom
	name = "中央指挥部领结颈圈"
	desc = "一条配有颈圈的精致金色领结，看起来很有领导风范！"
	icon_state = "bowtie_collar_centcom_tied"
	tie_type = "bowtie_collar_centcom"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/communist
	name = "鲜红领结颈圈"
	desc = "一条配有颈圈的简约红色领结，颇有平等主义风范！"
	icon_state = "bowtie_collar_communist_tied"
	tie_type = "bowtie_collar_communist"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/blue
	name = "蓝色领结颈圈"
	desc = "一条配有颈圈的简约蓝色领结，颇有帝国主义风范！"
	icon_state = "bowtie_collar_blue_tied"
	tie_type = "bowtie_collar_blue"
	greyscale_config = null
	greyscale_config_worn = null
	greyscale_colors = null
	is_tied = TRUE

//CAPTAIN

/obj/item/clothing/neck/bunny/bunnytie/captain
	name = "舰长领结"
	desc = "一条配有颈圈的蓝色领结，尽显指挥者风范！"
	icon_state = "bowtie_collar_captain_tied"
	tie_type = "bowtie_collar_captain"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//CARGO

/obj/item/clothing/neck/bunny/bunnytie/cargo
	name = "货运领结"
	desc = "一条配有颈圈的棕色领结，颇有工会成员风范！"
	icon_state = "bowtie_collar_cargo_tied"
	tie_type = "bowtie_collar_cargo"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/miner
	name = "矿工领结"
	desc = "一条配有颈圈的紫色领结，看起来坚韧耐劳！"
	icon_state = "bowtie_collar_explorer_tied"
	tie_type = "bowtie_collar_explorer"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/mailman
	name = "邮递员领结"
	desc = "一条配有颈圈的红色领结，看起来势不可挡！"
	icon_state = "bowtie_collar_mail_tied"
	tie_type = "bowtie_collar_mail"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/bitrunner
	name = "比特潜行者领结"
	desc = "比特潜行者被告知，仅穿着印有领结图案的趣味衬衫可不能出席正式场合。"
	icon_state = "bowtie_collar_bitrunner_tied"
	tie_type = "bowtie_collar_bitrunner"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//ENGI

/obj/item/clothing/neck/bunny/bunnytie/engineer
	name = "工程领结"
	desc = "一条配有颈圈的橙色领结，看起来勤劳能干！"
	icon_state = "bowtie_collar_engi_tied"
	tie_type = "bowtie_collar_engi"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/atmos_tech
	name = "大气技术员领结"
	desc = "一条配有颈圈的蓝色领结，看起来一点就着！"
	icon_state = "bowtie_collar_atmos_tied"
	tie_type = "bowtie_collar_atmos"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/ce
	name = "总工程师领结"
	desc = "一条配有颈圈的绿色领结，看起来很有管理者风范！"
	icon_state = "bowtie_collar_ce_tied"
	tie_type = "bowtie_collar_ce"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//MEDICAL

/obj/item/clothing/neck/bunny/bunnytie/doctor
	name = "医疗领结"
	desc = "一条配有颈圈的浅蓝色领结，看起来乐于助人！"
	icon_state = "bowtie_collar_doctor_tied"
	tie_type = "bowtie_collar_doctor"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/paramedic
	name = "急救员领结"
	desc = "一条配有颈圈的白色领结，看起来无私奉献！"
	icon_state = "bowtie_collar_paramedic_tied"
	tie_type = "bowtie_collar_paramedic"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/chemist
	name = "化学家领结"
	desc = "一条配有颈圈的橙色领结，看起来随时会炸！"
	icon_state = "bowtie_collar_chem_tied"
	tie_type = "bowtie_collar_chem"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/pathologist
	name = "病理学家领结"
	desc = "一条配有颈圈的绿色领结，看起来极具感染力！"
	icon_state = "bowtie_collar_virologist_tied"
	tie_type = "bowtie_collar_virologist"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/coroner
	name = "法医领结"
	desc = "一条配有颈圈的黑色领结，看起来死气……死也挑不出毛病！"
	icon_state = "bowtie_collar_coroner_tied"
	tie_type = "bowtie_collar_coroner"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/cmo
	name = "首席医疗官领结"
	desc = "一条配有颈圈的蓝色领结，看起来很有责任感！"
	icon_state = "bowtie_collar_cmo_tied"
	tie_type = "bowtie_collar_cmo"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//SCIENCE

/obj/item/clothing/neck/bunny/bunnytie/scientist
	name = "科学家领结"
	desc = "一条配有颈圈的紫色领结，看起来聪明过人！"
	icon_state = "bowtie_collar_science_tied"
	tie_type = "bowtie_collar_science"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/roboticist
	name = "机器人专家领结"
	desc = "一条配有颈圈的红色领结，颇有超人类主义风范！"
	icon_state = "bowtie_collar_roboticist_tied"
	tie_type = "bowtie_collar_roboticist"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/geneticist
	name = "遗传学家领结"
	desc = "一条配有颈圈的蓝色领结，看起来颇为异常！"
	icon_state = "bowtie_collar_genetics_tied"
	tie_type = "bowtie_collar_genetics"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/rd
	name = "科研主管领结"
	desc = "一条配有颈圈的紫色领结，看起来富有创造力！"
	icon_state = "bowtie_collar_science_tied"
	tie_type = "bowtie_collar_science"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//SECURITY

/obj/item/clothing/neck/bunny/bunnytie/security
	name = "安保领结"
	desc = "一条配有颈圈的红色领结，看起来很强硬！"
	icon_state = "bowtie_collar_sec_tied"
	tie_type = "bowtie_collar_sec"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/security_assistant
	name = "安保助理领结"
	desc = "一条配有颈圈的灰色领结，看起来很“能帮忙”。"
	icon_state = "bowtie_collar_sec_assistant_tied"
	tie_type = "bowtie_collar_sec_assistant"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/brig_phys
	name = "监狱医师领结"
	desc = "一条配有颈圈的红色领结，看起来付出多、认可少！"
	icon_state = "bowtie_collar_brig_phys_tied"
	tie_type = "bowtie_collar_brig_phys"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/detective
	name = "侦探领带颈圈"
	desc = "一条配有颈圈的棕色领带，看起来爱刨根问底！"
	icon_state = "tie_collar_det_tied"
	tie_type = "tie_collar_det"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/prisoner
	name = "囚犯领结"
	desc = "一条配有颈圈的黑色领结，看起来很有犯罪气息！"
	icon_state = "bowtie_collar_prisoner_tied"
	tie_type = "bowtie_collar_prisoner"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//SERVICE

/obj/item/clothing/neck/bunny/bunnytie/hop
	name = "人事主管领结"
	desc = "一条配有颈圈的暗红色领结，看起来被事务缠得脱不开身。"
	icon_state = "bowtie_collar_hop_tied"
	tie_type = "bowtie_collar_hop"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/janitor
	name = "清洁工领结"
	desc = "一条配有颈圈的紫色领结，看起来干净整洁！"
	icon_state = "bowtie_collar_janitor_tied"
	tie_type = "bowtie_collar_janitor"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/bartender
	name = "调酒师领结"
	desc = "一条配有颈圈的黑色领结，看起来很讲究！"
	greyscale_colors = "#ffffff#39393f"
	greyscale_config = /datum/greyscale_config/bowtie_collar
	greyscale_config_worn = /datum/greyscale_config/bowtie_collar_worn
	flags_1 = null
	custom_price = PAYCHECK_CREW
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/cook
	name = "厨师领结"
	desc = "一条配有颈圈的红色领结，颇有大厨风范！"
	icon_state = "bowtie_collar_chef_tied"
	tie_type = "bowtie_collar_chef"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/botanist
	name = "植物学家领结"
	desc = "一条配有颈圈的蓝色领结，看起来很擅长园艺！"
	icon_state = "bowtie_collar_botany_tied"
	tie_type = "bowtie_collar_botany"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/clown
	name = "小丑领结"
	desc = "一个大得离谱的蓝色领结，看起来很滑稽！"
	icon = 'modular_z121/icons/obj/clothing/bunny/neck/bunnyneck.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/neck/bunnyneck.dmi'
	icon_state = "bowtie_clown_tied"
	tie_type = "bowtie_clown"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	tie_timer = 8 SECONDS //It's a BIG bowtie
	is_tied = TRUE

/obj/item/clothing/neck/bunny_pendant
	name = "兔子吊坠"
	desc = "一枚刻有神圣兔子形象的金色吊坠。"
	icon_state = "chaplain_pendant"
	icon = 'modular_z121/icons/obj/clothing/bunny/neck/bunnyneck.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/neck/bunnyneck.dmi'

/obj/item/clothing/neck/bunny/bunnytie/lawyer_black
	name = "律师黑色领带颈圈"
	desc = "一条配有颈圈的黑色领带，看起来合乎法律！"
	icon_state = "tie_collar_lawyer_black_tied"
	tie_type = "tie_collar_lawyer_black"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/lawyer_blue
	name = "律师蓝色领带颈圈"
	desc = "一条配有颈圈的蓝色领带，看起来擅长辩护！"
	icon_state = "tie_collar_lawyer_blue_tied"
	tie_type = "tie_collar_lawyer_blue"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/lawyer_red
	name = "律师红色领带颈圈"
	desc = "一条配有颈圈的红色领带，看起来擅长起诉！"
	icon_state = "tie_collar_lawyer_red_tied"
	tie_type = "tie_collar_lawyer_red"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

/obj/item/clothing/neck/bunny/bunnytie/lawyer_good
	name = "好律师领带颈圈"
	desc = "一条配有颈圈的黑色领带，看起来至少在字面上合法！"
	icon_state = "tie_collar_lawyer_good_tied"
	tie_type = "tie_collar_lawyer_good"
	greyscale_colors = null
	greyscale_config = null
	greyscale_config_worn = null
	flags_1 = null
	is_tied = TRUE

//BUNNY STUFF END, SPRITES BY DimWhat OF MONKE STATION
