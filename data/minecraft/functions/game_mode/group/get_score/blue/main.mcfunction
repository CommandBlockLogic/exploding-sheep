# get_score/blue/main

# change flag
scoreboard players set game_status system 402

# tp
execute as @a run function game_mode/public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard objectives modify sidebar_score displayname [{"text":"青金石部落进攻!","color":"white"}]

# title
title @a times 10 50 10
title @a title ["游戏开始!"]
title @a[team=blue] subtitle ["进攻地图中央的能量沙堆!"]
tellraw @a[team=blue] [">> 用羊羊炸掉地图中央的红色能量沙堆来获得水晶砂!"]
tellraw @a[team=blue] [" - 获得尽可能高的分数吧!"]
tellraw @a[team=blue] [" - 对方在水晶砂附近会将水晶砂硬化, 先将他们驱赶走吧!"]
title @a[team=!blue] subtitle ["保护地图中央的能量沙堆!"]
tellraw @a[team=!blue] [">> 保护地图中央的红色能量沙堆来阻止青金石部落获得水晶砂!"]
tellraw @a[team=!blue] [" - 站在水晶砂附近可将水晶砂硬化!"]