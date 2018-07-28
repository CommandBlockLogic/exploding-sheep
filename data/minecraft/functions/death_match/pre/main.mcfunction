# death_match/pre/main

# change flag
scoreboard players set game_status system 101

# tp
tp @a 0 39 0
gamemode adventure @a

# clear
clear @a
effect clear @a
kill @e[tag=sheep_type_orange]
kill @e[tag=sheep_type_lime]
execute as @a store result score @s s_class_2 run scoreboard players get @s s_class
execute as @a run function sheep:ultimate/end


# score
scoreboard players reset * sidebar_score
scoreboard players set 红队羊羊能量 sidebar_score 10
scoreboard players set 蓝队羊羊能量 sidebar_score 10
scoreboard players set system_red_death_count system 10
scoreboard players set system_blue_death_count system 10
team join red 红队羊羊能量
team join blue 蓝队羊羊能量

scoreboard players set system_game_time system 0
scoreboard players set twenty system 20
scoreboard players set sixty system 60
scoreboard players set system_time_second system 0
scoreboard players set system_time_minute system 0


scoreboard objectives modify sidebar_score displayname ["准备..."]
scoreboard objectives setdisplay sidebar sidebar_score

# bossbar
bossbar add minecraft:red_score [""]
#bossbar add minecraft:red_score ["",{"text":"红队","color":"red"},"剩余羊羊能量: ",{"score":{"name":"system_red_death_count","objective":"system"}}]
bossbar set minecraft:red_score max 10
bossbar set minecraft:red_score value 10
bossbar set minecraft:red_score style notched_10
bossbar set minecraft:red_score color red
bossbar set minecraft:red_score players @a
bossbar set minecraft:red_score visible true

bossbar add minecraft:blue_score [""]
#bossbar add minecraft:blue_score ["",{"text":"蓝队","color":"blue"},"剩余羊羊能量: ",{"score":{"name":"system_blue_death_count","objective":"system"}}]
bossbar set minecraft:blue_score max 10
bossbar set minecraft:blue_score value 10
bossbar set minecraft:blue_score style notched_10
bossbar set minecraft:blue_score color blue
bossbar set minecraft:blue_score players @a
bossbar set minecraft:blue_score visible true


# death time
scoreboard players set @a death_time_max 100






# count down to start
scoreboard players set system_start_countdown system 100

# title
title @a times 0 100 10
title @a title ["游戏即将开始..."]
title @a subtitle ["5"]