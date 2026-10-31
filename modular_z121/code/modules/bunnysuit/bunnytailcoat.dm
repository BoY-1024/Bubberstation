//ALL BUNNY STUFF BY DimWhat OF MONKEESTATION

/obj/item/clothing/suit/jacket/tailcoat //parent type
	name = "燕尾服"
	desc = "兔子主题服务员等人员常穿的外套。"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	icon_state = "tailcoat"

/obj/item/clothing/suit/jacket/tailcoat/greyscale
	name = "燕尾服"
	desc = "兔子主题服务员等人员常穿的外套。"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	icon_state = "tailcoat"
	greyscale_colors = "#39393f"
	greyscale_config = /datum/greyscale_config/tailcoat
	greyscale_config_worn = /datum/greyscale_config/tailcoat_worn
	greyscale_config_worn_digi = /datum/greyscale_config/tailcoat_worn/digi
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/suit/wizrobe/magician //Not really a robe but it's MAGIC
	name = "魔术师燕尾服"
	desc = "一件镶金边的华丽燕尾服，似乎散发着强大的力量。"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	icon_state = "tailcoat_wiz"
	inhand_icon_state = null
	flags_inv = null
	armor_type = /datum/armor/none //RemoveArmor

/obj/item/clothing/suit/jacket/tailcoat/bartender
	name = "调酒师燕尾服"
	desc = "兔子主题调酒师常穿的外套，内置枪套，额外衬垫能提供少许防护。"
	icon_state = "tailcoat_bar"
	greyscale_colors = "#39393f#ffffff"
	greyscale_config = /datum/greyscale_config/tailcoat_bar
	greyscale_config_worn = /datum/greyscale_config/tailcoat_bar_worn
	greyscale_config_worn_digi = /datum/greyscale_config/tailcoat_bar_worn/digi
	armor_type = /datum/armor/suit_armor


/obj/item/clothing/suit/jacket/tailcoat/bartender/Initialize(mapload) //so bartenders can use cram their shotgun inside
	. = ..()
	allowed += list(
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/gun/ballistic,
		/obj/item/gun/energy,
	)

/obj/item/clothing/suit/jacket/tailcoat/syndicate
	name = "可疑燕尾服"
	desc = "兔子主题刺客常穿的外套，散发着莫名的威慑力。它用极其柔韧的轻质合金加固，这得花多少钱？"
	icon_state = "tailcoat_syndi"
	armor_type = /datum/armor/none

/obj/item/clothing/suit/jacket/tailcoat/syndicate/real
	armor_type = /datum/armor/wintercoat_syndicate

/obj/item/clothing/suit/jacket/tailcoat/syndicate/real/Initialize(mapload)
	. = ..()
	allowed += list(
		/obj/item/ammo_box,
		/obj/item/ammo_casing,
		/obj/item/gun/ballistic,
		/obj/item/gun/energy,
		/obj/item/restraints/handcuffs,
		/obj/item/knife/combat,
		/obj/item/melee/baton,
	)

/obj/item/clothing/suit/armor/security_tailcoat/centcom
	name = "中央指挥部燕尾服"
	desc = "兔子主题高管常穿的正式外套，内衬舒适而雅致的兔绒。"
	icon_state = "tailcoat_centcom"
	armor_type = /datum/armor/armor_centcom_formal_nt_consultant

/obj/item/clothing/suit/jacket/tailcoat/british
	name = "英国国旗燕尾服"
	desc = "一件饰有英国米字旗的燕尾服，是享用下午茶的完美着装。"
	icon_state = "tailcoat_brit"

/obj/item/clothing/suit/jacket/tailcoat/communist
	name = "鲜红燕尾服"
	desc = "一件饰有金星的红色燕尾服，是兔女郎服务员工会的正式制服。"
	icon_state = "tailcoat_communist"

/obj/item/clothing/suit/jacket/tailcoat/usa
	name = "星纹燕尾服"
	desc = "第五兔子营在独立战争中穿着的复古外套，不附送滑膛火枪。"
	icon_state = "tailcoat_stars"

/obj/item/clothing/suit/jacket/tailcoat/plasmaman
	name = "紫色燕尾服"
	desc = "一件紫色外套，颜色看起来与一些等离子人环境服相同。"
	icon_state = "tailcoat_plasma"

//CAPTAIN

/obj/item/clothing/suit/armor/vest/capcarapace/tailcoat_captain
	name = "舰长燕尾服"
	desc = "兔子主题舰长常穿的航海风外套，采用经过基因改造的装甲蓝兔绒加固。"
	icon_state = "captain"
	inhand_icon_state = null
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	dog_fashion = null

//CARGO

/obj/item/clothing/suit/jacket/tailcoat/quartermaster
	name = "货运主管燕尾服"
	desc = "兔子主题货运主管穿着的精致棕色外套，金色饰纹告诉大家谁说了算。"
	icon_state = "qm"

/obj/item/clothing/suit/jacket/tailcoat/cargo
	name = "货运燕尾服"
	desc = "兔子主题货运技术员穿着的简约棕色外套，条纹明显少于货运主管的款式。"
	icon_state = "cargo_tech"

/obj/item/clothing/suit/jacket/tailcoat/miner
	name = "探险燕尾服"
	desc = "供兔子主题矿工穿着的改装探险服，可安装歌利亚装甲片，但自身防护较弱。"
	icon_state = "explorer"
	cold_protection = CHEST|GROIN|ARMS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	heat_protection = CHEST|GROIN|ARMS
	max_heat_protection_temperature = SPACE_SUIT_MAX_TEMP_PROTECT
	armor_type = /datum/armor/hooded_explorer
	allowed = list(
		/obj/item/flashlight,
		/obj/item/gun/energy/recharge/kinetic_accelerator,
		/obj/item/mining_scanner,
		/obj/item/pickaxe,
		/obj/item/resonator,
		/obj/item/storage/bag/ore,
		/obj/item/t_scanner/adv_mining_scanner,
		/obj/item/tank/internals,
		)
	resistance_flags = FIRE_PROOF
	clothing_traits = list(TRAIT_SNOWSTORM_IMMUNE)

/obj/item/clothing/suit/jacket/tailcoat/miner/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/armor_plate)


/obj/item/clothing/suit/jacket/tailcoat/bitrunner
	name = "比特潜行者燕尾服"
	desc = "兔子主题货运技术员穿着的黑金色外套。打开太空可乐，来他妈的打游戏吧！"
	icon_state = "bitrunner"

//ENGI

/obj/item/clothing/suit/jacket/tailcoat/engineer
	name = "工程燕尾服"
	desc = "兔子主题工程师穿着的高可见度燕尾服，适合在昏暗环境下作业。"
	icon_state = "engi"
	allowed = list(
		/obj/item/fireaxe/metal_h2_axe,
		/obj/item/flashlight,
		/obj/item/radio,
		/obj/item/storage/bag/construction,
		/obj/item/tank/internals/emergency_oxygen,
		/obj/item/tank/internals/plasmaman,
		/obj/item/t_scanner,
		/obj/item/gun/ballistic/rifle/boltaction/pipegun/prime,
	)

/obj/item/clothing/suit/jacket/tailcoat/engineer/worn_overlays(mutable_appearance/standing, isinhands, icon_file)
	. = ..()
	if(!isinhands)
		. += emissive_appearance(icon_file, "[icon_state]-emissive", src, alpha = src.alpha)

/obj/item/clothing/suit/utility/fire/atmos_tech_tailcoat
	name = "大气技术员燕尾服"
	desc = "兔子主题大气技术员穿着的重型防火燕尾服，以石棉织物加固，既时髦又致癌。"
	icon_state = "atmos"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	body_parts_covered = CHEST|GROIN|ARMS
	slowdown = 0
	armor_type = /datum/armor/atmos_tech_tailcoat
	flags_inv = null
	clothing_flags = null
	min_cold_protection_temperature = null
	max_heat_protection_temperature = null
	strip_delay = 30
	equip_delay_other = 30

/datum/armor/atmos_tech_tailcoat
	melee = 10
	bullet = 5
	laser = 10
	energy = 10
	bomb = 20
	bio = 50
	fire = 100
	acid = 50

/obj/item/clothing/suit/utility/fire/ce_tailcoat
	name = "总工程师燕尾服"
	desc = "兔子主题总工程师穿着的绿白色厚实外套，三层复合织物既绝缘又防火，可惜敞开的前襟让这些防护都白费了。"
	icon_state = "ce"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	body_parts_covered = CHEST|GROIN|ARMS
	slowdown = 0
	armor_type = /datum/armor/ce_tailcoat
	flags_inv = null
	clothing_flags = null
	min_cold_protection_temperature = null
	max_heat_protection_temperature = null
	strip_delay = 30
	equip_delay_other = 30

/datum/armor/ce_tailcoat
	melee = 10
	bullet = 5
	laser = 10
	energy = 10
	bomb = 20
	bio = 50
	fire = 100
	acid = 50

//MEDICAL

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat
	name = "医疗燕尾服"
	desc = "兔子主题医生穿着的白蓝色无菌外套，很适合挡住飞溅的血液。"
	icon_state = "doctor"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/paramedic
	name = "急救员燕尾服"
	desc = "兔子主题急救员穿着的厚实外套，配有醒目条纹，便于在黑暗中执行救援。"
	icon_state = "paramedic"

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/chemist
	name = "化学家燕尾服"
	desc = "兔子主题化学家穿着的白橙色无菌外套，处理危险物质时，敞开的胸口可不是个好设计。"
	icon_state = "chem"

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/pathologist
	name = "病理学家燕尾服"
	desc = "兔子主题病理学家穿着的白绿色无菌外套，是生化防护服更时髦、却毫无防护作用的替代品。"
	icon_state = "virologist"

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/coroner
	name = "法医燕尾服"
	desc = "兔子主题法医穿着的黑白色无菌外套，背后饰有骷髅图案。"
	icon_state = "coroner"

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/cmo
	name = "首席医疗官燕尾服"
	desc = "兔子主题首席医疗官穿着的蓝色无菌外套，蓝色能让穿着者及其身上的血迹，从其他级别较低且更干净的医生中脱颖而出。"
	icon_state = "cmo"

//SCIENCE

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/science
	name = "科学家燕尾服"
	desc = "兔子主题科学家穿着的整洁白色外套，能提供不错的史莱姆防护。"
	icon_state = "science"

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/science/robotics
	name = "机器人专家燕尾服"
	desc = "兔子主题机器人专家穿着的白色外套，配有红色肩甲，沾上油污后居然也很好看。"
	icon_state = "roboticist"


/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/science/genetics
	name = "遗传学家燕尾服"
	desc = "兔子主题遗传学家穿着的整洁白蓝色外套，几乎像真正医生穿的白大褂。"
	icon_state = "genetics"

/obj/item/clothing/suit/jacket/research_director/tailcoat
	name = "科研主管燕尾服"
	desc = "兔子主题科研主管穿着的整洁紫色外套，采用缴获的绑架者技术制造。看似外套的部分其实是肩甲投射出的高级全息影像，触感也与真衣服完全一样。"
	icon_state = "rd"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	body_parts_covered = CHEST|ARMS|GROIN

//SECURITY

/obj/item/clothing/suit/armor/security_tailcoat
	name = "安保燕尾服"
	desc = "兔子主题安保官穿着的强化燕尾服，采用与MK 1背心相同的轻型装甲，但胸部防护显然更薄弱。"
	icon_state = "sec"
	inhand_icon_state = "armor"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	dog_fashion = null
	armor_type = /datum/armor/suit_armor

/obj/item/clothing/suit/armor/security_tailcoat/assistant
	name = "安保助理燕尾服"
	desc = "兔子主题安保助理穿着的强化燕尾服，暗淡的配色表明其在兔子指挥体系中的较低地位。"
	icon_state = "sec_assistant"

/obj/item/clothing/suit/armor/security_tailcoat/warden
	name = "典狱长燕尾服"
	desc = "兔子主题典狱长穿着的强化燕尾服，巧妙地将防弹破片装甲板藏在时髦外观之下。"
	icon_state = "warden"

/obj/item/clothing/suit/toggle/labcoat/doctor_tailcoat/sec
	name = "监狱医师燕尾服"
	desc = "兔子主题监狱医师穿着的红灰色外套，大体保持无菌，但没有“标准”安保燕尾服的防护衬垫。"
	icon_state = "brig_phys"

/obj/item/clothing/suit/jacket/det_suit/tailcoat
	name = "侦探燕尾服"
	desc = "兔子主题侦探穿着的强化燕尾服，很适合冷硬干练、做事利落的女士。"
	icon_state = "detective"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'

/obj/item/clothing/suit/jacket/det_suit/tailcoat/noir
	name = "黑色电影风侦探燕尾服"
	desc = "黑色电影风兔子主题侦探穿着的强化燕尾服，很适合冷硬干练、做事利落的女士。"
	icon_state = "detective_noir"

/obj/item/clothing/suit/armor/hos_tailcoat
	name = "安保主管燕尾服"
	desc = "兔子主题安保主管穿着的强化燕尾服，特殊合金兼顾额外防护与时尚外观。"
	icon_state = "hos"
	inhand_icon_state = "armor"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	dog_fashion = null
	armor_type = /datum/armor/armor_hos
	strip_delay = 80
//SERVICE

/obj/item/clothing/suit/armor/hop_tailcoat
	name = "人事主管燕尾服"
	desc = "兔子主题官僚常穿的严肃外套，这副肩甲总该让别人认真对待你了。"
	icon_state = "hop"
	inhand_icon_state = "armor"
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/suits/jacket.dmi'
	worn_icon_digi = 'modular_z121/icons/mob/clothing/bunny/suits/jacket_digi.dmi'
	icon = 'modular_z121/icons/obj/clothing/bunny/suits/jacket.dmi'
	body_parts_covered = CHEST|GROIN|ARMS
	cold_protection = CHEST|GROIN|ARMS
	dog_fashion = null

/obj/item/clothing/suit/jacket/tailcoat/janitor
	name = "清洁工燕尾服"
	desc = "兔子主题清洁工常穿的整洁外套，紫色袖子沿用了24世纪末的时尚。"
	icon_state = "janitor"

/obj/item/clothing/suit/jacket/tailcoat/cook
	name = "厨师燕尾服"
	desc = "兔子主题厨师穿着的专业白色外套，红色饰纹与经常沾上的猴血十分相配。"
	icon_state = "chef"
	allowed = list(
		/obj/item/kitchen,
		/obj/item/knife/kitchen,
		/obj/item/storage/bag/tray,
	)

/obj/item/clothing/suit/jacket/tailcoat/botanist
	name = "植物学家燕尾服"
	desc = "兔子主题植物学家穿着的绿色皮革外套，很适合为背部遮阳。"
	icon_state = "botany"
	allowed = list(
		/obj/item/cultivator,
		/obj/item/geneshears,
		/obj/item/graft,
		/obj/item/hatchet,
		/obj/item/plant_analyzer,
		/obj/item/reagent_containers/cup/beaker,
		/obj/item/reagent_containers/cup/bottle,
		/obj/item/reagent_containers/spray/pestspray,
		/obj/item/reagent_containers/spray/plantbgone,
		/obj/item/secateurs,
		/obj/item/seeds,
		/obj/item/storage/bag/plants,
	)

/obj/item/clothing/suit/jacket/tailcoat/clown
	name = "小丑燕尾服"
	desc = "兔子主题小丑穿着的橙色圆点外套，让大家见识谁才是真正的马戏团长。"
	icon_state = "clown"

/obj/item/clothing/suit/jacket/tailcoat/mime
	name = "默剧演员燕尾服"
	desc = "兔子主题默剧演员穿着的条纹袖黑色外套，红色饰纹模仿了传统默剧服装的背带。"
	icon_state = "mime"

/obj/item/clothing/suit/jacket/tailcoat/chaplain
	name = "牧师燕尾服"
	desc = "兔子主题牧师穿着的镶金黑色外套，是Cairead兔形崇拜教派的传统祭服。"
	icon_state = "chaplain"
	allowed = list(
		/obj/item/nullrod,
		/obj/item/reagent_containers/cup/glass/bottle/holywater,
		/obj/item/storage/fancy/candle_box,
		/obj/item/flashlight/flare/candle,
		/obj/item/tank/internals/emergency_oxygen,
		/obj/item/tank/internals/plasmaman
	)

/obj/item/clothing/suit/jacket/tailcoat/curator_red
	name = "馆长红色燕尾服"
	desc = "兔子主题图书管理员穿着的红色亚麻外套，长时间在档案室工作时能替肩膀挡住灰尘。"
	icon_state = "curator_red"

/obj/item/clothing/suit/jacket/tailcoat/curator_green
	name = "馆长绿色燕尾服"
	desc = "兔子主题图书管理员穿着的绿色亚麻外套，长时间在档案室工作时能替肩膀挡住灰尘。"
	icon_state = "curator_green"

/obj/item/clothing/suit/jacket/tailcoat/curator_teal
	name = "馆长青色燕尾服"
	desc = "兔子主题图书管理员穿着的青色亚麻外套，长时间在档案室工作时能替肩膀挡住灰尘。"
	icon_state = "curator_teal"

/obj/item/clothing/suit/jacket/tailcoat/lawyer_black
	name = "律师黑色燕尾服"
	desc = "兔子主题律师的标配，极其专业。"
	icon_state = "lawyer_black"

/obj/item/clothing/suit/jacket/tailcoat/lawyer_blue
	name = "律师蓝色燕尾服"
	desc = "兔子主题律师穿着的蓝色亚麻外套，口袋里或许装着受诅咒的灵魂。"
	icon_state = "lawyer_blue"

/obj/item/clothing/suit/jacket/tailcoat/lawyer_red
	name = "律师红色燕尾服"
	desc = "兔子主题律师穿着的红色亚麻外套，口袋里或许装着受诅咒的灵魂。"
	icon_state = "lawyer_red"

/obj/item/clothing/suit/jacket/tailcoat/lawyer_good
	name = "好律师燕尾服"
	desc = "兔子主题律师穿着的米色亚麻外套，口袋里或许装着受诅咒的灵魂。"
	icon_state = "lawyer_good"

/obj/item/clothing/suit/jacket/tailcoat/psychologist
	name = "心理医生燕尾服"
	desc = "兔子主题心理医生穿着的黑色亚麻外套。休闲的敞襟设计让你显得平易近人，或许有点太随意了。"
	icon_state = "psychologist"

//BUNNY STUFF END, SPRITES BY DimWhat OF MONKE STATION

/obj/item/clothing/suit/armor/security_tailcoat/syndi
	name = "辛迪加燕尾服"
	desc = "不法兔子穿着的强化燕尾服，巧妙地将防弹破片装甲板藏在时髦外观之下。"
	icon_state = "tailcoat_syndi"
