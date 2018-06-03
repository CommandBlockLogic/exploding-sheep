# keep_mark/lobby

kill @e[tag=system_lobby_mark]

# 进入游戏 选类型提示
summon minecraft:area_effect_cloud -166 10 -127 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_hint","system_lobby_mark_enter"],CustomName:"[\"§f踩上混凝土块切换类型§r\"]"}
summon minecraft:area_effect_cloud -171 10 -127 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_hint","system_lobby_mark_enter"],CustomName:"[\"§f踩上这里进入游戏§r\"]"}

# 选类型提示
summon minecraft:area_effect_cloud -172 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_pink"],CustomName:"[\"§d治愈§r\"]"}
summon minecraft:area_effect_cloud -173 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_cyan"],CustomName:"[\"§b冰冻§r\"]"}
summon minecraft:area_effect_cloud -174 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_red"],CustomName:"[\"§c瞬发§r\"]"}
summon minecraft:area_effect_cloud -175 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_blue"],CustomName:"[\"§9失重§r\"]"}
summon minecraft:area_effect_cloud -176 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_gray"],CustomName:"[\"§7笨重§r\"]"}
summon minecraft:area_effect_cloud -177 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_white"],CustomName:"[\"§f普通§r\"]"}

summon minecraft:area_effect_cloud -160 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_pink"],CustomName:"[\"§d治愈§r\"]"}
summon minecraft:area_effect_cloud -161 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_cyan"],CustomName:"[\"§b冰冻§r\"]"}
summon minecraft:area_effect_cloud -162 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_red"],CustomName:"[\"§c瞬发§r\"]"}
summon minecraft:area_effect_cloud -163 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_blue"],CustomName:"[\"§9失重§r\"]"}
summon minecraft:area_effect_cloud -164 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_gray"],CustomName:"[\"§7笨重§r\"]"}
summon minecraft:area_effect_cloud -165 9 -126 {Duration:9999999,Tags:["system_class_mark","system_lobby_mark","system_class_mark_white"],CustomName:"[\"§f普通§r\"]"}


# 选队伍提示
summon minecraft:area_effect_cloud -161 10 -120 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_hint","system_lobby_mark_join_red"],CustomName:"[\"将小羊丢到这里加入§c红队§r\"]"}
summon minecraft:area_effect_cloud -173 10 -117 {Duration:9999999,Tags:["system_lobby_mark","system_lobby_mark_hint","system_lobby_mark_join_blue"],CustomName:"[\"将小羊丢到这里加入§9蓝队§r\"]"}