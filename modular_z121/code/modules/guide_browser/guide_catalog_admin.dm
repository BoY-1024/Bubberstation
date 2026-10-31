ADMIN_VERB(reload_guide_catalog, R_SERVER, "重新加载指南目录", "从HTTPS JSON接口加载指南目录。", ADMIN_CATEGORY_SERVER)
	var/current_url = CONFIG_GET(string/guide_catalog_url)
	var/new_url = tgui_input_text(user, "输入指南目录的HTTPS网址。", "重新加载指南目录", current_url, 2048, encode = FALSE)
	if(isnull(new_url))
		return
	new_url = trim(new_url)
	if(!length(new_url))
		to_chat(user, span_warning("必须提供指南目录网址。"))
		return
	var/list/result = SSguide_catalog.load_catalog(new_url)
	if(!result["success"])
		to_chat(user, span_warning("指南目录重新加载失败：[result["error"]] [SSguide_catalog.catalog_ready ? "仍在使用原有目录。" : "指南浏览器仍不可用。"]"))
		log_admin("[key_name(user)]重新加载指南目录失败：[result["error"]]")
		return
	CONFIG_SET(string/guide_catalog_url, new_url)
	SSguide_catalog.commit_catalog(result["candidate"], new_url)
	var/datum/guide_catalog_candidate/candidate = result["candidate"]
	to_chat(user, span_notice("指南目录已重新加载，共[candidate.node_count]个节点。此网址只在本次运行中生效；如需重启后保留，请更新config.txt。"))
	log_admin("[key_name(user)]重新加载了指南目录，共[candidate.node_count]个节点。")
	message_admins("[key_name_admin(user)]重新加载了指南目录，共[candidate.node_count]个节点。")
	SSblackbox.record_feedback("nested tally", "admin_verb", 1, list("Reload Guide Catalog"))
