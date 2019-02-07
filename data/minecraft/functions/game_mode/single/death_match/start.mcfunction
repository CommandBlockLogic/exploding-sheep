# death_match/start


# change flag
scoreboard players set game_status system 3

# tp
execute as @a run function game_mode/public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname ["炸人数"]

# title
title @a times 10 50 10
title @a title ["炸飞更多的人！"]
title @a subtitle ["游戏开始"]
tellraw @a [">> 炸飞最多的人！"]