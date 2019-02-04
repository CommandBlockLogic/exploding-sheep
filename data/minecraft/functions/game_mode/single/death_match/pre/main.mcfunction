# game_mode/group/death_match/pre/main

# 修改当前状态为单人杀人前
scoreboard players set game_status system 103

# tp
tp @a 22 25 -19


# clear
function game_mode/public/game_start_clear


# score
scoreboard players reset * sidebar_score
scoreboard players set system_game_ratio system 3
execute store result score system_red_death_count system if entity @a[team=blue]
execute store result score system_blue_death_count system if entity @a[team=red]
scoreboard players operation system_red_death_count system > system_blue_death_count system
scoreboard players operation system_blue_death_count system > system_red_death_count system
scoreboard players operation system_red_death_count system *= system_game_ratio system
scoreboard players operation system_blue_death_count system *= system_game_ratio system

scoreboard players set system_game_time system 0
scoreboard players set twenty system 20
scoreboard players set sixty system 60
scoreboard players set system_time_second system 0
scoreboard players set system_time_minute system 0


scoreboard objectives modify sidebar_score displayname ["准备..."]
scoreboard objectives setdisplay sidebar sidebar_score
scoreboard players set 准备... sidebar_score 0


# bossbar
bossbar add minecraft:red_score ["",{"text":"剩余生命","color":"red"},": ",{"score":{"name":"system_red_death_count","objective":"system"}}]
execute store result bossbar minecraft:red_score max run scoreboard players get system_red_death_count system
execute store result bossbar minecraft:red_score value run scoreboard players get system_red_death_count system
bossbar set minecraft:red_score style progress
bossbar set minecraft:red_score color red
bossbar set minecraft:red_score players @a
bossbar set minecraft:red_score visible true

bossbar add minecraft:blue_score ["",{"text":"剩余生命","color":"blue"},": ",{"score":{"name":"system_blue_death_count","objective":"system"}}]
execute store result bossbar minecraft:blue_score max run scoreboard players get system_blue_death_count system
execute store result bossbar minecraft:blue_score value run scoreboard players get system_blue_death_count system
bossbar set minecraft:blue_score style progress
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