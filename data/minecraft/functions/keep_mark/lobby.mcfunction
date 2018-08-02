# keep_mark/lobby

kill @e[tag=system_lobby_mark]

# 进入游戏 选类型提示
summon minecraft:area_effect_cloud -164 10 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark"],CustomName:"[\"§f踩上彩色混凝土块切换类型§r\"]"}
summon minecraft:area_effect_cloud -161 10 -126 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_enter","system_lobby_mark_enter_hint"],CustomName:"[\"§f踩上这里进入游戏§r\"]"}
summon minecraft:area_effect_cloud -161 10.3 -126 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_enter_hint"],CustomName:"[\"§f传送石§r\"]"}

# 选类型提示
summon minecraft:area_effect_cloud -161 9 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_orange"],CustomName:"[\"§6吸收§r\"]"}
summon minecraft:area_effect_cloud -164 9 -127 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_cyan"],CustomName:"[\"§b冰冻§r\"]"}
summon minecraft:area_effect_cloud -164 9 -128 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_red"],CustomName:"[\"§c瞬发§r\"]"}
summon minecraft:area_effect_cloud -164 9 -126 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_blue"],CustomName:"[\"§e失重§r\"]"}
summon minecraft:area_effect_cloud -162 9 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_black"],CustomName:"[\"§1末影§r\"]"}
summon minecraft:area_effect_cloud -163 9 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_white"],CustomName:"[\"§f普通§r\"]"}

# 选模式提示
summon minecraft:area_effect_cloud -174.0 10 -126.0 {Duration:9999999,Tags:["system_lobby_mark","system_mode_mark"],CustomName:"[\"选择游戏模式\"]"}

# 选队伍提示
summon minecraft:area_effect_cloud -161 10 -120 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_join","system_lobby_mark_join_red"],CustomName:"[\"将小羊丢到这里加入§c红队§r\"]"}
summon minecraft:area_effect_cloud -173 10 -117 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_join","system_lobby_mark_join_blue"],CustomName:"[\"将小羊丢到这里加入§9蓝队§r\"]"}
summon minecraft:area_effect_cloud -158.5 10 -112.0 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_join","system_lobby_mark_join_gray"],CustomName:"[\"将小羊丢到这里进入§7旁观§r\"]"}