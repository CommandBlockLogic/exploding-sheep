# get_score/start

# change flag
scoreboard players set game_status system 2

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0
gamemode spectator @a[team=]


# core
function core/clear/all
function core/generate/home

# title
title @a times 10 50 10
title @a title ["5分钟内得分高者胜利!"]
title @a subtitle [""]


