# death_match/start


# change flag
scoreboard players set game_status system 1

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0
gamemode spectator @a[team=]


# title
title @a times 10 50 10
title @a title ["10条生命!"]
title @a subtitle ["游戏开始"]
