# get_score/start

# change flag
scoreboard players set game_status system 2

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0

# title
title @a times 10 50 10
title @a title ["先得500分者胜利!"]

scoreboard players set system_red_score system 0
scoreboard players set system_blue_score system 0
scoreboard objectives setdisplay sidebar sidebar_score