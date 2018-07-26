# battle/start

# change flag
scoreboard players set game_status system 3

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0
gamemode spectator @a[team=]


# title
title @a times 10 50 10
title @a title ["游戏开始!"]
title @a subtitle ["清除对方水晶以获取胜利!"]
tellraw @a [">> 占领地图两侧的",{"text":" 水晶柱 ","color":"light_purple"},"可为己方水晶恢复能量"]




