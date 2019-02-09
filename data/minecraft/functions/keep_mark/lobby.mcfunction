# keep_mark/lobby

kill @e[tag=system_lobby_mark]

# 进入游戏 选类型提示
summon minecraft:area_effect_cloud -164 10 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark"],CustomName:"[\"§f踩上彩色混凝土块切换类型§r\"]"}
summon minecraft:area_effect_cloud -161 10 -126 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_enter","system_lobby_mark_enter_hint"],CustomName:"[\"§f踩上这里进入游戏§r\"]"}
summon minecraft:area_effect_cloud -161 10.3 -126 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_enter_hint"],CustomName:"[\"§f传送石§r\"]"}
summon minecraft:falling_block -161 9 -126 {Time:1,DropItem:0,NoGravity:1,Glowing:1,BlockState:{Name:cobblestone},Tags:["system_lobby_mark","system_lobby_mark_enter_block"]}

# 选类型提示
summon minecraft:area_effect_cloud -161 9 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_orange"],CustomName:"[\"§6吸收§r\"]"}
summon minecraft:area_effect_cloud -164 9 -127 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_cyan"],CustomName:"[\"§b冰冻§r\"]"}
summon minecraft:area_effect_cloud -164 9 -128 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_red"],CustomName:"[\"§c瞬发§r\"]"}
summon minecraft:area_effect_cloud -164 9 -126 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_blue"],CustomName:"[\"§e失重§r\"]"}
summon minecraft:area_effect_cloud -162 9 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_black"],CustomName:"[\"§1末影§r\"]"}
summon minecraft:area_effect_cloud -163 9 -129 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_white"],CustomName:"[\"§f普通§r\"]"}
summon minecraft:area_effect_cloud -172 22 -133 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_volleyball"],CustomName:"[\"§b排球§r\"]"}
summon minecraft:area_effect_cloud -161 6 -73 {Duration:9999999,Tags:["system_lobby_mark","system_class_mark","system_class_mark_football"],CustomName:"[\"§8足球§r\"]"}

# 选模式提示
summon minecraft:area_effect_cloud -175.0 9.0 -124.5 {Duration:9999999,Tags:["system_lobby_mark","system_main_mode_mark"],CustomName:"[\"选择游戏模式\"]"}
summon minecraft:area_effect_cloud -174.5 10.0 -126.5 {Duration:9999999,Tags:["system_lobby_mark","system_mode_mark"],CustomName:"[\"争夺水晶砂\"]"}
summon minecraft:area_effect_cloud -174.5 10.0 -122.5 {Duration:9999999,Tags:["system_lobby_mark","system_mode_mark"],CustomName:"[\"死亡竞赛\"]"}
summon minecraft:area_effect_cloud -176.5 10.0 -124.5 {Duration:9999999,Tags:["system_lobby_mark","system_mode_mark","system_mode_change_mark","system_mode_change_mark_single"],CustomName:"[\"切换 \",{\"text\":\"个人\",\"color\":\"white\",\"bold\":\"false\"},\"/\",{\"text\":\"队伍\",\"color\":\"gold\",\"bold\":\"true\"}]"}

# 选队伍提示
summon minecraft:area_effect_cloud -161 10 -120 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_join","system_lobby_mark_join_red","system_lobby_mark_join_yellow"],CustomName:"[\"将小羊丢到这里加入§c红队§r\"]"}
summon minecraft:area_effect_cloud -173 10 -117 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_join","system_lobby_mark_join_blue","system_lobby_mark_join_yellow"],CustomName:"[\"将小羊丢到这里加入§9蓝队§r\"]"}
summon minecraft:area_effect_cloud -158.5 10 -112.0 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_join","system_lobby_mark_join_gray"],CustomName:"[\"将小羊丢到这里进入§7旁观§r\"]"}
execute if score game_mode_status system matches 1 as @e[tag=system_lobby_mark_join_red] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§e游戏§r\"]"}
execute if score game_mode_status system matches 1 as @e[tag=system_lobby_mark_join_blue] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§e游戏§r\"]"}



# 僵尸
execute positioned -176.5 5 -60.8 unless entity @e[type=giant,distance=..1] run summon minecraft:giant ~ ~ ~ {Invulnerable:1,NoAI:1,NoGravity:1,Rotation:[-180f,0f],HandItems:[{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{Damage:15s,Unbreakable:1b}},{Count:1b,id:"minecraft:carrot_on_a_stick",tag:{Unbreakable:1b}}]}