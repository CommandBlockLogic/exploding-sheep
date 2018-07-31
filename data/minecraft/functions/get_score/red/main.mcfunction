# get_score/red/main

# change flag
scoreboard players set game_status system 202

# tp
execute as @a run function public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname [{"text":"红方进攻!","color":"white"}]
team join red 红队水晶砂
team join blue 蓝队水晶砂
scoreboard players set 红队水晶砂 sidebar_score 0
scoreboard players set 蓝队水晶砂 sidebar_score 0

# title
title @a times 10 50 10
title @a title ["游戏开始!"]
title @a[team=red] subtitle ["进攻地图中央的能量沙堆!"]
tellraw @a[team=red] [">> 用羊羊炸掉地图中央的蓝色能量沙堆来获得水晶砂!"]
tellraw @a[team=red] [">> 获得尽可能高的分数吧!"]
title @a[team=!red] subtitle ["保护地图中央的能量沙堆!"]
tellraw @a[team=!red] [">> 保护地图中央的蓝色能量沙堆来阻止红队获得水晶砂!"]