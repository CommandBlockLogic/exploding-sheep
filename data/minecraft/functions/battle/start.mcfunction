# battle/start

# change flag
scoreboard players set game_status system 2

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0

# clear
clear @a
effect clear @a

# title
title @a times 10 50 10
title @a title ["清除对方水晶以获取胜利!"]

# core
function core/clear/all
function core/generate/home
function core/generate/corner

# score
scoreboard players reset * sidebar_score
scoreboard players set 红队 sidebar_score 0
scoreboard players set 蓝队 sidebar_score 0
scoreboard players set system_red_score system 276
scoreboard players set system_blue_score system 276

scoreboard objectives modify sidebar_score displayname ["剩余水晶数"]
scoreboard objectives setdisplay sidebar sidebar_score

scoreboard players set system_home_time system -30
scoreboard players set system_corner_time system -30

scoreboard players set @e[tag=system_core_mark_small] tower_status 1
scoreboard players set @e[tag=system_core_mark_big] tower_status 4