# get_score/start

# change flag
scoreboard players set game_status system 2

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0

# clear
clear @a
effect clear @a
kill @e[tag=sheep_type_orange]
kill @e[tag=sheep_type_lime]
execute as @a store result score @s s_class_2 run scoreboard players get @s s_class
execute as @a run function sheep:ultimate/end

# title
title @a times 10 50 10
title @a title ["5分钟内得分高者胜利!"]

# core
function core/clear/all
function core/generate/home

# score
scoreboard players reset * sidebar_score
scoreboard players set 红队 sidebar_score 0
scoreboard players set 蓝队 sidebar_score 0
scoreboard players set system_red_score system 0
scoreboard players set system_blue_score system 0

scoreboard objectives modify sidebar_score displayname ["夺取水晶数"]
scoreboard objectives setdisplay sidebar sidebar_score

scoreboard players set system_game_time system 6000
scoreboard players set system_twenty system 20
scoreboard players set system_sixty system 60
scoreboard players set system_second system 0
scoreboard players set system_minute system 0


# bossbar
bossbar add minecraft:score_time ["temp"]
bossbar set minecraft:score_time max 6000
bossbar set minecraft:score_time style progress
bossbar set minecraft:score_time color white
bossbar set minecraft:score_time players @a
bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":",{"score":{"name":"system_second","objective":"system"}}]