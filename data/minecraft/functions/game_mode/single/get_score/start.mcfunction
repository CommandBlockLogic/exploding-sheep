# game_mode/single/get_score/start

# change flag
scoreboard players set game_status system 4

# tp
execute as @a run function game_mode/public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score
scoreboard players set @a core_destory 0
scoreboard players set @a core_number 0
scoreboard objectives modify sidebar_score displayname ["获得的水晶砂"]

# title
title @a times 10 50 10
title @a title ["抢夺中央的水晶砂吧！"]
title @a subtitle ["游戏开始"]
tellraw @a [">> 杀死敌人可获得对方部分水晶砂哦！"]