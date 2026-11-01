#define CREDIT_ROLL_SPEED 100
#define CREDIT_SPAWN_SPEED 20
#define CREDIT_ANIMATE_HEIGHT (14 * world.icon_size)
#define CREDIT_EASE_DURATION 22

#define JOINTEXT(X) jointext(X, null) // Why is this needed? Why is this here? Oh well

GLOBAL_VAR_INIT(end_credits_song, null)
GLOBAL_VAR_INIT(end_credits_title, null)
GLOBAL_LIST(end_titles)

/datum/controller/subsystem/ticker/declare_completion(force_ending)

	if(!GLOB.end_titles)
		GLOB.end_titles = generate_titles()

	for(var/client/C)
		if(!C?.credits)
			C?.RollCredits()

/* 	for(var/thing in GLOB.clients)
		var/client/C = thing
		if (!C)
			continue */
	. = ..()

/* /datum/controller/subsystem/ticker/show_roundend_report(client/C, report_type = null)
	. = ..()
	for(var/iteration in GLOB.clients)
		var/client/clients = iteration
		if(!clients.credits)
			clients.RollCredits() */
/* /client
	var/list/credits */

/client/proc/RollCredits()
	set waitfor = FALSE
	var/credit_pref = mob.client?.prefs?.read_preference(/datum/preference/toggle/see_credits)
	if(!credit_pref)
		return

	LAZYINITLIST(credits)

/* 	if(mob)
		mob.overlay_fullscreen("meeting",/atom/movable/screen/fullscreen/emergency_meeting) */
//	sound_to_playing_players('modular_skyrat/master_files/sound/music/elibao.ogg', volume = 100, vary = FALSE, frequency = 0, channel = 0, pressure_affected = FALSE)

	var/list/_credits = credits
	verbs += /client/proc/ClearCredits
	for(var/I in GLOB.end_titles)
		if(!credits)
			return
		var/atom/movable/screen/credit/T = new(null, null, I, src)
		_credits += T
		T.rollem()
		sleep(CREDIT_SPAWN_SPEED)
	sleep(CREDIT_ROLL_SPEED - CREDIT_SPAWN_SPEED)

	ClearCredits()
	verbs -= /client/proc/ClearCredits

GAME_VERB_PROC(/client, ClearCredits, "Stop End Titles", "OOC")
	verbs -= /client/proc/ClearCredits
	QDEL_LAZYLIST(credits)

/atom/movable/screen/credit
	icon_state = "blank"
	mouse_opacity = 0
	alpha = 0
	screen_loc = "CENTER-7,CENTER-7"
	plane = HUD_PLANE
	layer = ABOVE_ALL_MOB_LAYER
	var/client/parent
	var/matrix/target

/atom/movable/screen/credit/Initialize(mapload, datum/hud/hud_owner, credited, client/P)
	. = ..()
	parent = P
	maptext = {"<div style="font:'Small Fonts'">[credited]</div>"}
	maptext_height = world.icon_size * 2
	maptext_width = world.icon_size * 14

/atom/movable/screen/credit/proc/rollem()
	var/matrix/direction = matrix(transform)
	direction.Translate(0, CREDIT_ANIMATE_HEIGHT)
	animate(src, transform = direction, time = CREDIT_ROLL_SPEED)
	animate(src, alpha = 255, time = CREDIT_EASE_DURATION, flags = ANIMATION_PARALLEL)
	UNLINT(animate(src, alpha = 0, flags = ANIMATION_PARALLEL, time = CREDIT_EASE_DURATION, delay = CREDIT_ROLL_SPEED - CREDIT_EASE_DURATION))
	parent?.screen += src

/atom/movable/screen/credit/proc/fadeout(matrix/direction)

	sleep(CREDIT_EASE_DURATION)
	qdel(src)

/atom/movable/screen/credit/Destroy()
	var/client/P = parent
	if(parent)
		P.screen -= src
	LAZYREMOVE(P?.credits, src)
	parent = null
	. = ..()

/proc/generate_titles()
	var/list/titles = list()
	var/list/cast = list()
	var/list/chunk = list()
	var/list/possible_titles = list()
	var/chunksize = 0
	if(!GLOB.end_credits_title)
		/* Establish a big-ass list of potential titles for the "episode". */
		possible_titles += "[pick("太空人", "人性", "荣誉", "理智", "猴王", "物价", "战甲", "清洁工",\
							"超物质", "医疗部", "工程部", "安保部", "科研部", "服务部", "指挥部", "探索者", "寻路者",\
							"太空站")]的\
							 [pick("陨落", "崛起", "抉择", "终点", "黑暗", "毁灭", "复仇", "灾难", "困境")]"
		possible_titles += "船员们 [pick("的PTSD", "深陷困境", "得了不可治愈疾病", "吃披萨", "上了一场宝贵的历史课", "带薪休假", "一起吸嗨", "成功逃命", "重返童年", "深陷内战", "的致命宿醉", "[pick("药物滥用", "犯罪", "暴力电子游戏", "远古美国动画片", "太空炮弹", "减压程序")]的危害")]"
		possible_titles += "[pick("爱的", "禁毒", "洗钱的危害", "异种敏感", "投资诈骗", "药物滥用", "辐射保护", "神圣几何", "弦理论", "抽象数学", "[pick("乌纳西", "斯克雷尔", "狄奥娜", "卡尔玛尼", "沃克斯", "蛇形气体人", "特沙利")]交配仪式", "远古中药")]纪录片" // modular_z121：保留定制字幕并汉化种族名称。
		possible_titles += "非常 [pick("企业化", "纳米传讯", "舰队", "猫", "异星生物", "探索", "疯狂", "美味", "火星人", "平凡")] 的 [pick("一天", "春节", "假日", "周末", "星期一", "假期")]"
		possible_titles += "[pick("枪械泛滥", "动物世界", "当维护无人机遇上商用级填充泡沫", "杀杀杀杀杀杀杀", "性爱炸弹", "外星遗物传奇：[pick("I","II","III","IV","V","VI","VII","VIII","IX", "X", "C","M","L")]")]" // modular_z121：沿用已有汉化，保留源包定制片名。
		possible_titles += "[pick("太空", "性感", "龙", "术士", "洗衣机", "枪", "宣传", "狗", "一氧化碳", "忍者", "巫师", "社会", "青少年犯罪", "政治动机", "癫火起飞")] [pick("的任务", "之力", "大冒险")]"
		possible_titles += "[pick("[pick("纳米传讯", "辛迪加", "太阳系联邦")] 屹立之日", "猎杀绿毛肠", "异形大战贩卖机", "太空之旅", "13号空间站")]"
		titles += "<center><h1>第 [rand(1,1000)] 集<br>[pick(possible_titles)]<h1></h1></h1></center>"
	else
		titles += "<center><h1>第 [rand(1,1000)] 集<br>[GLOB.end_credits_title]<h1></h1></h1></center>"

	for(var/datum/mind/mind in get_crewmember_minds())
		if(!mind)
			continue
		if(!cast.len && !chunksize)
			chunk += "演员:"
		var/datum/job/job = mind?.assigned_role
		var/jobtitle = chinese_job_display(job?.title) || "自己" // modular_z121：职业字幕使用现有中文显示入口。
		var/used_name = mind?.current?.name
		var/antag_string
		for(var/datum/antagonist/antagonist as anything in mind?.antag_datums)
			antag_string ? (antag_string += ", ") : (antag_string += "...")
			antag_string += "[antagonist?.name]"
		chunk += "[used_name] 扮演 [mind?.antag_datums ? "[antag_string]与[jobtitle]" : jobtitle]" // modular_z121：保留演员字幕的中文连接词。
		chunksize++

		if(chunksize > 2)
			cast += "<center>[jointext(chunk,"<br>")]</center>"
			chunk.Cut()
			chunksize = 0
	if(chunk.len)
		cast += "<center>[jointext(chunk,"<br>")]</center>"

	titles += cast

	var/list/corpses = list()
	var/list/monkies = list()
	for(var/mob/living/carbon/human/H in GLOB.dead_mob_list)
		if(H.timeofdeath < 5 MINUTES) //no prespawned corpses
			continue
		if(ismonkey(H))
			monkies[H?.name] += 1
		else if(H?.real_name)
			corpses += H?.real_name
	if(corpses.len)
		titles += "<center>基于真实事件<br>以纪念 [english_list(corpses)].</center>"

	var/list/staff = list("制片方:")
	var/list/static/staffjobs = list("端咖啡的", "摄影师", "专业喊叫师", "椅子操作员", "编舞", "历史顾问", "服装设计师", "总编辑", "行政助理", "盒饭派发员")
	var/list/goodboys = list()
	for(var/client/C)
		if(!C?.holder)
			continue
		if(C?.holder)
			staff += "[uppertext(pick(staffjobs))] - '[C?.key]'"

	titles += "<center>[jointext(staff,"<br>")]</center>"
	if(goodboys.len)
		titles += "<center>乖宝宝:<br>[english_list(goodboys)]</center><br>"

	var/disclaimer = "<br>由 [pick("纳米传讯", "辛迪加", "太阳系联盟")] 赞助播出。<br>版权所有，不得转载。<br>\
					 本影片受地球联邦政府著作权法及星系内各政权相关法律保护。<br>\
					 首发地: [pick("火星", "月球", "地球", "金星", "火卫一", "木卫二", "谷神星", "提亚马特", "鯨魚座ε", "仙女座", "冥王星", "欧厄尔",\
					 "洛达尼亚", "金斯顿", "西努", "尤克利德五号", "洛里曼", "特斯滕", "盖亚")].<br>" // modular_z121：首发地沿用已有译名并补充盖亚。
	disclaimer += pick("禁止二次创作使用。严禁！",
			"本节目适合宇宙中一切有知觉的物质观看，如果你认为该影片冒犯到了您的任何利益，<br>\
			财产，人身安全，香蕉种子，合法权益，<br>\
			请告诉我们您的个人信息和家庭住址，我们会亲自派律师上门用香蕉派砸死你！滑稽！！！", // modular_z121：汉化定制片尾笑料。
					   "专业声明：拍摄涉及的特技表演均符合安全规范（含实习特技员），请勿模仿",
					   "[pick("纳米传讯", "辛迪加", "太阳系联盟")] 对本片所示行为不予认可，模仿风险请自行承担。",
					   "未经授权对本片及任何片段（含原声音轨）进行公开放映、传播或复制<br>\
						可能导致ERT启动特别强制回收程序",
						"本片所涉故事、人物名称、角色设定及情节均属虚构，<br>\
						与任何实际存在的个人（在世或离世）、地点、机构、商业品牌等均无关联且不作暗示。<br>\
						但本片确实源于真实事件，所有人物皆有现实原型。",
						"严正声明：本片涉及烟草制品之场景展现，均未获任何个人或实体授权及利益输送<br>\
						(本免责声明由癌多多集团独家冠名——专业致癌物质搬运工，百年老字号品质保证！).",
						"本片拍摄过程中未有动物受到伤害（先前已声明的死亡案例除外）<br>\
						危险动作请勿模仿。")
	titles += "<hr>"
	titles += "<center><span style='font-size:24pt;'>[JOINTEXT(disclaimer)]</span></center>"
	return titles
// modular_z121：合入自定义片尾文本和字号，保留当前字幕接口及玩家偏好。

/// Enables the choice of players disabling seeing the credits
/datum/preference/toggle/see_credits
	category = PREFERENCE_CATEGORY_GAME_PREFERENCES
	savefile_key = "see_credits"
	savefile_identifier = PREFERENCE_PLAYER
	default_value = TRUE

#undef CREDIT_ROLL_SPEED
#undef CREDIT_SPAWN_SPEED
#undef CREDIT_ANIMATE_HEIGHT
#undef CREDIT_EASE_DURATION
#undef JOINTEXT
