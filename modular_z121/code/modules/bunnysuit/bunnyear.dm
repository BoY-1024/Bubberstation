//ALL BUNNY STUFF BY DimWhat OF MONKEESTATION

/obj/item/clothing/head/playbunnyears
	name = "兔耳头带"
	desc = "一条装有兔耳的头带，其中一只耳朵已经歪了。"
	icon = 'modular_z121/icons/obj/clothing/bunny/head/bunnyears.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/head/bunnyears.dmi'
	icon_state = "bar"

/obj/item/clothing/head/playbunnyears/greyscale
	name = "兔耳头带"
	desc = "一条装有兔耳的头带，其中一只耳朵已经歪了。"
	icon_state = "playbunny_ears"
	supports_variations_flags = CLOTHING_SNOUTED_VARIATION_NO_NEW_ICON
	greyscale_colors = "#39393f"
	greyscale_config = /datum/greyscale_config/playbunnyears
	greyscale_config_worn = /datum/greyscale_config/playbunnyears_worn
	flags_1 = IS_PLAYER_COLORABLE_1

/obj/item/clothing/head/playbunnyears/syndicate
	name = "血红兔耳头带"
	desc = "一条装有兔耳的可疑头带，看起来还用塑钢加固过……为什么呢？"
	icon_state = "syndibunny_ears"

/obj/item/clothing/head/playbunnyears/syndicate/real
	clothing_flags = SNUG_FIT
	armor_type = /datum/armor/head_helmet

/obj/item/clothing/head/playbunnyears/centcom
	name = "中央指挥部兔耳头带"
	desc = "一条装有专业兔耳的头带。耳朵取自一种濒危的绿色兔子。"
	icon_state = "playbunny_ears_centcom"

/obj/item/clothing/head/playbunnyears/british
	name = "英式兔耳头带"
	desc = "一条装有高雅兔耳的头带，佩戴它以向王室致敬。"
	icon_state = "playbunny_ears_brit"

/obj/item/clothing/head/playbunnyears/communist
	name = "鲜红兔耳头带"
	desc = "一条装有红金色兔耳的头带，常见于支持集体化的兔女郎服务员。"
	icon_state = "playbunny_ears_communist"

/obj/item/clothing/head/playbunnyears/usa
	name = "美式兔耳头带"
	desc = "一条装有星条旗纹兔耳的头带，属于真正的爱国者。"
	icon_state = "playbunny_ears_usa"

//CAPTAIN

/obj/item/clothing/head/hats/caphat/bunnyears_captain
	name = "舰长兔耳"
	desc = "一条装有深蓝色兔耳的头带，用于替代传统的双角帽。"
	icon_state = "captain"
	inhand_icon_state = "that"
	icon = 'modular_z121/icons/obj/clothing/bunny/head/bunnyears.dmi'
	worn_icon = 'modular_z121/icons/mob/clothing/bunny/head/bunnyears.dmi'
	supports_variations_flags = CLOTHING_SNOUTED_VARIATION_NO_NEW_ICON
	dog_fashion = null

//CARGO

/obj/item/clothing/head/playbunnyears/quartermaster
	name = "货运主管兔耳"
	desc = "棕灰色兔耳配上头带，棕色头带表示佩戴者比较重要。"
	icon_state = "qm"

/obj/item/clothing/head/playbunnyears/cargo
	name = "货运兔耳"
	desc = "棕灰色兔耳配上头带，灰色头带表示佩戴者没那么重要。"
	icon_state = "cargo_tech"

/obj/item/clothing/head/playbunnyears/miner
	name = "矿工兔耳"
	desc = "一条装有灰褐色兔耳的头带，完全无法抵御拉瓦兰恶劣的大气环境。"
	icon_state = "explorer"
	armor_type = /datum/armor/hooded_explorer

/obj/item/clothing/head/playbunnyears/mailman
	name = "邮递员兔耳"
	desc = "一条装有蓝红色兔耳的头带，向所有人展示你对速度和效率的追求。"
	icon_state = "mail"

/obj/item/clothing/head/playbunnyears/bitrunner
	name = "比特潜行者兔耳"
	desc = "黑金配色，沾着太空山风汽水的污渍。卡罗塔电竞队的官方装备。"
	icon_state = "bitrunner"

//ENGI

/obj/item/clothing/head/playbunnyears/engineer
	name = "工程兔耳"
	desc = "一条装有黄橙色兔耳的头带，很容易被卷进重型机械。"
	icon_state = "engi"

/obj/item/clothing/head/playbunnyears/atmos_tech
	name = "大气技术员兔耳"
	desc = "一条装有黄蓝色兔耳的头带，无法提供任何防火或极端气压防护。"
	icon_state = "atmos"

/obj/item/clothing/head/playbunnyears/ce
	name = "总工程师兔耳"
	desc = "一条装有绿白色兔耳的头带，记得让它远离超物质。"
	icon_state = "ce"

//MEDICAL

/obj/item/clothing/head/playbunnyears/doctor
	name = "医疗兔耳"
	desc = "一条装有白蓝色兔耳的头带，肯定比额镜可爱。"
	icon_state = "doctor"

/obj/item/clothing/head/playbunnyears/paramedic
	name = "急救员兔耳"
	desc = "一条装有蓝白色兔耳的头带，明确标示你的兔女郎急救员身份，让你赢得众人的尊重与礼让……才怪。"
	icon_state = "paramedic"

/obj/item/clothing/head/playbunnyears/chemist
	name = "化学家兔耳"
	desc = "一条装有白橙色兔耳的头带，其中一只耳朵已经歪了。"
	icon_state = "chem"

/obj/item/clothing/head/playbunnyears/pathologist
	name = "病理学家兔耳"
	desc = "一条装有白绿色兔耳的头带。这不是合格的个人防护用品。"
	icon_state = "virologist"

/obj/item/clothing/head/playbunnyears/coroner
	name = "法医兔耳"
	desc = "一条装有黑白色兔耳的头带，请别戴着它参加葬礼。"
	icon_state = "coroner"

/obj/item/clothing/head/playbunnyears/cmo
	name = "首席医疗官兔耳"
	desc = "一条装有白蓝色兔耳的头带，能赢得整个医疗团队的敬意。"
	icon_state = "cmo"

//SCIENCE

/obj/item/clothing/head/playbunnyears/scientist
	name = "科学家兔耳"
	desc = "一条装有紫白色兔耳的头带，为兔形目研究者的装扮画上句号。"
	icon_state = "science"

/obj/item/clothing/head/playbunnyears/roboticist
	name = "机器人专家兔耳"
	desc = "一条装有黑红色兔耳的头带，内置伺服装置，可模仿真正兔耳的动作。"
	icon_state = "roboticist"

/obj/item/clothing/head/playbunnyears/geneticist
	name = "遗传学家兔耳"
	desc = "一条装有蓝白色兔耳的头带，适合找不到兔子来拼接基因的时候戴。"
	icon_state = "genetics"

/obj/item/clothing/head/playbunnyears/rd
	name = "科研主管兔耳"
	desc = "一条装有紫黑色兔耳的头带。为了研发能让佩戴者显得更高的头饰，大量经费被投入其中，这就是最终成果。"
	icon_state = "rd"

//SECURITY

/obj/item/clothing/head/playbunnyears/security
	name = "安保兔耳"
	desc = "一条装有红黑色兔耳的头带，头带由淬硬钢制成。"
	icon_state = "sec"
	clothing_flags = SNUG_FIT
	armor_type = /datum/armor/head_helmet


/obj/item/clothing/head/playbunnyears/security/assistant
	name = "安保助理兔耳"
	desc = "一条装有红灰色兔耳的头带，贴合牢固，长距离飞扑时也不会掉落。"
	icon_state = "sec_assistant"

//TODO: Find a way to add Warden stuff that isn't hack-y.

/obj/item/clothing/head/playbunnyears/warden
	name = "典狱长兔耳"
	desc = "一条装有红白色兔耳的头带，看监控时能防止头发挡住脸。"
	icon_state = "warden"
	clothing_flags = SNUG_FIT
	armor_type = /datum/armor/head_helmet

/obj/item/clothing/head/playbunnyears/brig_phys
	name = "监狱医师兔耳"
	desc = "一条装有红灰色兔耳的头带。戴着它的人肯定很专业……对吧？"
	icon_state = "brig_phys"

/obj/item/clothing/head/playbunnyears/detective
	name = "侦探兔耳"
	desc = "一条装有棕色兔耳的头带，大耳朵方便听清慌乱女士们的求助。"
	icon_state = "detective"
	armor_type = /datum/armor/fedora_det_hat


/obj/item/clothing/head/playbunnyears/detective/noir
	name = "黑色电影风侦探兔耳"
	desc = "白色头带配上黑色兔耳，大耳朵方便听清慌乱女士们的求助。经典黑白配色！"
	icon_state = "detective_noir"

/obj/item/clothing/head/playbunnyears/prisoner
	name = "囚犯兔耳"
	desc = "一条装有黑橙色兔耳的头带。这种装扮早已被太空日内瓦公约认定为残酷且不寻常的惩罚而禁止。"
	icon_state = "prisoner"

/obj/item/clothing/head/playbunnyears/hos
	name = "安保主管兔耳"
	desc = "一条装有红金色兔耳的头带，彰显你对全体兔女郎安保员的指挥权。"
	icon_state = "hos"
	clothing_flags = SNUG_FIT
	armor_type = /datum/armor/hats_hos

//SERVICE

/obj/item/clothing/head/playbunnyears/hop
	name = "人事主管兔耳"
	desc = "一条装有柔和蓝色兔耳的头带，深受各地兔子官僚喜爱。"
	icon_state = "hop"
	armor_type = /datum/armor/hats_hopcap

/obj/item/clothing/head/playbunnyears/janitor
	name = "清洁工兔耳"
	desc = "一条装有紫色兔耳的头带，被打理得一尘不染。"
	icon_state = "janitor"

/obj/item/clothing/head/playbunnyears/bartender
	name = "调酒师兔耳"
	desc = "一条装有典雅黑白兔耳的头带，带着淡淡酒香。"
	icon_state = "bar"

/obj/item/clothing/head/playbunnyears/cook
	name = "厨师兔耳"
	desc = "一条装有白红色兔耳的头带，有助于防止头发掉进食物。"
	icon_state = "chef"

/obj/item/clothing/head/playbunnyears/botanist
	name = "植物学家兔耳"
	desc = "一条装有绿蓝色兔耳的头带，整日在农场劳作时能防止汗水流进眼睛。"
	icon_state = "botany"

/obj/item/clothing/head/playbunnyears/clown
	name = "小丑兔耳"
	desc = "一对橙粉色兔耳，甚至还会吱吱叫。"
	icon_state = "clown"

/obj/item/clothing/head/playbunnyears/mime
	name = "默剧演员兔耳"
	desc = "一条装有红黑色兔耳的头带，适合厌倦普通贝雷帽的街头艺人。"
	icon_state = "mime"

/obj/item/clothing/head/playbunnyears/chaplain
	name = "牧师兔耳"
	desc = "一条装有黑白色兔耳的头带，用于敬奉卡罗塔园丁。"
	icon_state = "chaplain"

/obj/item/clothing/head/playbunnyears/curator_red
	name = "馆长红色兔耳"
	desc = "一条装有红米色兔耳的头带，彰显你在兔子相关领域的专业造诣。"
	icon_state = "curator_red"

/obj/item/clothing/head/playbunnyears/curator_green
	name = "馆长绿色兔耳"
	desc = "一条装有绿黑色兔耳的头带，彰显你在兔子相关领域的专业造诣。"
	icon_state = "curator_green"

/obj/item/clothing/head/playbunnyears/curator_teal
	name = "馆长青色兔耳"
	desc = "一条装有青色兔耳的头带，彰显你在兔子相关领域的专业造诣。"
	icon_state = "curator_teal"

/obj/item/clothing/head/playbunnyears/lawyer_black
	name = "律师黑色兔耳"
	desc = "一条装有黑色兔耳的头带，是协商和解时的完美配饰。"
	icon_state = "lawyer_black"

/obj/item/clothing/head/playbunnyears/lawyer_blue
	name = "律师蓝色兔耳"
	desc = "一条装有蓝白色兔耳的头带，是协商和解时的完美配饰。"
	icon_state = "lawyer_blue"

/obj/item/clothing/head/playbunnyears/lawyer_red
	name = "律师红色兔耳"
	desc = "一条装有红白色兔耳的头带，是协商和解时的完美配饰。"
	icon_state = "lawyer_red"

/obj/item/clothing/head/playbunnyears/lawyer_good
	name = "好律师兔耳"
	desc = "一条装有米蓝色兔耳的头带，是协商和解时的完美配饰。"
	icon_state = "lawyer_good"

/obj/item/clothing/head/playbunnyears/psychologist
	name = "心理医生兔耳"
	desc = "一对黑色兔耳。那么，它们让你有什么感受？"
	icon_state = "psychologist"

//BUNNY STUFF END, SPRITES BY DimWhat OF MONKE STATION
