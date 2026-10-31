/obj/item/organ/external/genital/penis/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/organ/external/genital/testicles/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/organ/external/genital/vagina/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/organ/external/genital/womb/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/organ/external/genital/anus/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/organ/external/genital/breasts/Initialize(mapload)
	.=..()
	qdel(src)



/datum/reagent/drug/crocin
	name = "克罗辛"
	description = "天然存在于番红花和栀子花中的药物，可用作天然甜味剂。"
	taste_description = "草莓味"
	color = "#FFADFF"

/obj/structure/bed/bdsm_bed
	name = "束缚床"
	desc = "一张两侧配有D形环的乳胶床，看起来很舒服。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_structures/bdsm_furniture.dmi'
	icon_state = "bdsm_bed"
	max_integrity = 50

/obj/structure/bed/bdsm_bed/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/bdsm_bed_kit
	name = "束缚床组装套件"
	desc = "组装需要扳手。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_structures/bdsm_furniture.dmi'
	throwforce = 0
	icon_state = "bdsm_bed_kit"
	w_class = WEIGHT_CLASS_HUGE

/obj/item/bdsm_bed_kit/Initialize(mapload)
	.=..()
	qdel(src)

/obj/structure/chair/x_stand
	name = "X形束缚架"
	desc = "用于将人固定成X形的支架。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_structures/bdsm_furniture.dmi'
	icon_state = "xstand"
	max_buckled_mobs = 1
	max_integrity = 75

/obj/structure/chair/x_stand/Initialize(mapload)
	.=..()
	qdel(src)

/obj/structure/pole
	name = "钢管舞杆"
	desc = "一根固定在天花板和地板之间的杆子，可用于向观众展示舞姿与身材。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_structures/dancing_pole.dmi'
	icon_state = "pole"
	density = TRUE
	anchored = TRUE
	max_integrity = 75

/obj/structure/pole/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/polepack
	name = "粉色钢管舞杆组装包"
	desc = "组装需要扳手。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_structures/dancing_pole.dmi'
	throwforce = 0
	icon_state = "pole_base"

/obj/item/polepack/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/storage/box/strippole_kit/Initialize(mapload)
	.=..()
	qdel(src)

/obj/structure/chair/shibari_stand/Initialize(mapload)
	.=..()
	qdel(src)


/obj/structure/chair/milking_machine
	name = "挤奶机"
	desc = "一种固定式挤奶设备，用来挤出……某些东西。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_structures/milking_machine.dmi'
	icon_state = "milking_pink_off"
	max_buckled_mobs = 1
	item_chair = null
	max_integrity = 75

/obj/structure/chair/milking_machine/Initialize(mapload)
	.=..()
	qdel(src)

//PILL
/obj/item/reagent_containers/pill/crocin
	name = "克罗辛药片（10单位）"
	desc = "我倒下了，再也硬不起来了！"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_pills.dmi'
	icon_state = "crocin"
	list_reagents = list(/datum/reagent/water = 1)

/obj/item/reagent_containers/pill/hexacrocin
	name = "六克罗辛药片（10单位）"
	desc = "一颗形状诡异的心形药片。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_pills.dmi'
	icon_state = "hexacrocin"
	list_reagents = list(/datum/reagent/water = 1)

/obj/item/reagent_containers/pill/dopamine
	name = "多巴胺药片（5单位）"
	desc = "把高潮的感觉装进一颗药片里……真奇怪。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_pills.dmi'
	icon_state = "dopamine"
	list_reagents = list(/datum/reagent/water = 1)

/obj/item/reagent_containers/pill/camphor
	name = "樟脑药片（10单位）"
	desc = "给一大早就精神过头的人准备的。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_pills.dmi'
	icon_state = "camphor"
	list_reagents = list(/datum/reagent/water = 1)

/obj/item/reagent_containers/pill/pentacamphor
	name = "五樟脑药片（10单位）"
	desc = "化学版的禁欲牢房。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_pills.dmi'
	icon_state = "pentacamphor"
	list_reagents = list(/datum/reagent/water = 1)

/obj/item/reagent_containers/pill/crocin/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/reagent_containers/pill/hexacrocin/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/reagent_containers/pill/dopamine/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/reagent_containers/pill/camphor/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/reagent_containers/pill/pentacamphor/Initialize(mapload)
	.=..()
	qdel(src)

//sextoy
/obj/item/bdsm_candle
	name = "大豆蜡烛"
	desc = "一支熔点较低的蜡烛。"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	icon_state = "candle"
	inhand_icon_state = "candle"
	w_class = WEIGHT_CLASS_TINY

/obj/item/bdsm_candle/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/serviette
	name = "餐巾纸"
	desc = "用来清理各种污渍。"
	icon_state = "serviette_clean"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'

/obj/item/serviette/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/serviette_used
	name = "餐巾纸"
	desc = "用来清理各种污渍。"
	icon_state = "serviette_clean"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'

/obj/item/serviette_used/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/serviette_pack
	name = "餐巾纸包"
	desc = "真好奇欲愿公司为什么要生产这个……"
	icon_state = "serviettepack"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'

/obj/item/serviette_pack/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/eggvib
	name = "跳蛋"
	desc = "一种简单的震动情趣玩具。"
	icon_state = "eggvib"
	inhand_icon_state = "eggvib"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'

/obj/item/clothing/sextoy/eggvib/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/eggvib/signalvib
	name = "遥控跳蛋"
	desc = "一种可遥控的震动情趣玩具。使用信号器开启。"
	icon_state = "signalvib"
	inhand_icon_state = "signalvib"

/obj/item/clothing/sextoy/eggvib/signalvib/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/buttplug
	name = "肛塞"
	desc = "你说这东西要塞进哪里？！"
	icon_state = "buttplug"
	worn_icon_state = "buttplug"
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_items/lewd_items.dmi'
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'

/obj/item/clothing/sextoy/buttplug/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/nipple_clamps
	name = "乳夹"
	desc = "用于使乳头产生痛感。"
	icon_state = "clamps"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'

/obj/item/clothing/sextoy/nipple_clamps/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/condom_pack
	name = "避孕套包装"
	desc = "别担心，我有保护措施。"
	icon_state = "condom_pack"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	w_class = WEIGHT_CLASS_TINY

/obj/item/condom_pack/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/condom
	name = "避孕套"
	desc = "不知道能不能把它套在头上……"
	icon_state = "condom"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	w_class = WEIGHT_CLASS_TINY

/obj/item/clothing/sextoy/condom/Initialize(mapload)
	.=..()
	qdel(src)


/obj/item/clothing/sextoy/dildo
	name = "假阳具"
	desc = "一个大型塑料阴茎，和你母亲床头柜抽屉里的那个很像。"
	icon_state = "dildo"
	inhand_icon_state = "dildo"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'

/obj/item/clothing/sextoy/dildo/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/dildo/custom_dildo
	name = "可定制假阳具"
	desc = "一个可按你的需求定制的假阳具。"
	icon_state = "polydildo"
	inhand_icon_state = "polydildo"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'

/obj/item/clothing/sextoy/dildo/custom_dildo/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/dildo/double_dildo
	name = "双头假阳具"
	desc = "只有真正身经百战的老手，才能招架得住它。"
	icon_state = "dildo_double"
	inhand_icon_state = "dildo_double"
	worn_icon_state = "dildo_side"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	w_class = WEIGHT_CLASS_TINY

/obj/item/clothing/sextoy/dildo/double_dildo/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/spanking_pad
	name = "拍打板"
	desc = "一块带手柄的皮革拍板。"
	icon_state = "spankpad"
	inhand_icon_state = "spankpad"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	w_class = WEIGHT_CLASS_SMALL

/obj/item/spanking_pad/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/vibrator
	name = "震动棒"
	desc = "哇，真是个……有趣的东西。不知道这个红色按钮是做什么的……"
	icon_state = "vibrator"
	inhand_icon_state = "vibrator"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'

/obj/item/clothing/sextoy/vibrator/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/vibroring
	name = "震动环"
	desc = "一种用于维持勃起的环状玩具。"
	icon_state = "vibroring"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'

/obj/item/clothing/sextoy/vibroring/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/sextoy/magic_wand
	name = "魔法按摩棒"
	desc = "不知道它有什么魔法，不过按下按钮就会发出有趣的震动。"
	icon_state = "magicwand"
	worn_icon_state = "magicwand"
	inhand_icon_state = "magicwand"
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_items/lewd_items.dmi'
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'

/obj/item/clothing/sextoy/magic_wand/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/mask/leatherwhip
	name = "皮鞭"
	desc = "一种用于支配的工具，带来你所喜欢的痛感。"
	icon_state = "leather"
	worn_icon_state = "leather"
	inhand_icon_state = "leather"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_items/lewd_items.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_masks.dmi'
	worn_icon_muzzled = 'modular_skyrat/master_files/icons/mob/clothing/mask_muzzled.dmi'
	lefthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_left.dmi'
	righthand_file = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_inhands/lewd_inhand_right.dmi'
	w_class = WEIGHT_CLASS_NORMAL
	hitsound = 'sound/items/weapons/whip.ogg'

/obj/item/clothing/mask/leatherwhip/Initialize(mapload)
	.=..()
	qdel(src)

//CLOTHING
/obj/item/clothing/gloves/ball_mittens
	name = "球形手套"
	desc = "一双舒适的充气球形手套。"
	icon_state = "ballmittens"
	inhand_icon_state = "ballmittens"
	icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/obj/lewd_clothing/lewd_gloves.dmi'
	worn_icon = 'modular_skyrat/modules/modular_items/lewd_items/icons/mob/lewd_clothing/lewd_gloves.dmi'
	breakouttime = 1 SECONDS

/obj/item/clothing/gloves/ball_mittens/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/mask/ballgag
	name = "阳具形口塞"
	desc = "使佩戴者无法说话，同时令呼吸更加困难。"
	icon_state = "chokegag"

/obj/item/clothing/mask/ballgag/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/clothing/mask/ballgag/choking
	name = "阳具形口塞"
	desc = "使佩戴者无法说话，同时令呼吸更加困难。"
	icon_state = "chokegag"

/obj/item/clothing/mask/ballgag/choking/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/tickle_feather
	name = "挠痒羽毛"
	desc = "一根很适合挠痒的羽毛，既能逗乐，也能捉弄人。"
	icon_state = "feather"

/obj/item/tickle_feather/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/kinky_shocker
	name = "情趣电击器"
	desc = "一种能产生微弱电击的小玩具。"
	icon_state = "shocker"

/obj/item/kinky_shocker/Initialize(mapload)
	.=..()
	qdel(src)

/obj/item/electropack/shockcollar
	worn_icon_teshari = 'modular_z121/icons/mob/clothing/lewd_neck_teshari.dmi'

/obj/item/clothing/neck/kink_collar
	worn_icon_teshari = 'modular_z121/icons/mob/clothing/lewd_neck_teshari.dmi'

// All eleven key skins are supplied by upstream /datum/atom_skin/kink_collar_key.
