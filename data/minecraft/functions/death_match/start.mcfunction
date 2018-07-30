# death_match/start


# change flag
scoreboard players set game_status system 1

# tp
execute as @a run function public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname ["耗尽对方羊羊能量!"]

# title
title @a times 10 50 10
title @a title ["10点羊羊能量!"]
title @a subtitle ["游戏开始"]
tellraw @a [">> 对方每死亡一次就会损失一点羊羊能量!"]
tellraw @a [">> 耗尽对方的羊羊能量吧!"]