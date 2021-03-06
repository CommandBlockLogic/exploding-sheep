# get_score/red/main

# change flag
scoreboard players set game_status system 202

# tp
execute as @a[team=red] run function game_mode/public/tp_game_spawn
tp @a[team=!red] 0 14 0
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname [{"text":"红石部落进攻!","color":"white"}]
team join red 红石部落水晶砂
team join blue 青金石部落水晶砂
scoreboard players set 红石部落水晶砂 sidebar_score 0
scoreboard players set 青金石部落水晶砂 sidebar_score 0

# title
title @a times 10 50 10
title @a title ["游戏开始!"]
title @a[team=red] subtitle ["进攻地图中央的砂堆!"]
tellraw @a[team=red] [">> 用羊羊炸掉地图中央的蓝色砂堆来获得水晶砂!"]
tellraw @a[team=red] [" - 获得尽可能高的分数吧!"]
tellraw @a[team=red] [" - 对方在水晶砂附近会将水晶砂硬化, 先将他们驱赶走吧!"]
title @a[team=!red] subtitle ["保护地图中央的砂堆!"]
tellraw @a[team=!red] [">> 保护地图中央的蓝色砂堆来阻止红石部落获得水晶砂!"]
tellraw @a[team=!red] [" - 站在水晶砂附近可将水晶砂硬化!"]