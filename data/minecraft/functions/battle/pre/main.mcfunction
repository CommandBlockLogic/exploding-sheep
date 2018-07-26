# battle/pre/main

# change flag
scoreboard players set game_status system 103

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
scoreboard players set 红队 sidebar_score 0
scoreboard players set 蓝队 sidebar_score 0
scoreboard players set system_red_score system 276
scoreboard players set system_blue_score system 276

scoreboard players set system_home_time system 0
scoreboard players set system_corner_time system 0

# death time
# death time = total_death_time * team_player_num / total_player_num
scoreboard players set total_death_time system 200
scoreboard players set red_player_num system 0
scoreboard players set blue_player_num system 0
scoreboard players set total_player_num system 0
execute as @a[team=red] run scoreboard players add red_player_num system 1
execute as @a[team=blue] run scoreboard players add blue_player_num system 1
execute store result score total_player_num system run scoreboard players get red_player_num system
scoreboard players operation red_player_num system += blue_player_num system
execute as @a store result score @s death_time_max run scoreboard players get total_death_time system
execute as @a[team=red] run scoreboard players operation @s death_time_max *= red_player_num system
execute as @a[team=blue] run scoreboard players operation @s death_time_max *= blue_player_num system
execute as @a run scoreboard players operation @s death_time_max /= total_player_num system



# bossbar
bossbar add minecraft:red_score ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"完好","color":"red"},{"text":" 不恢复","color":"dark_gray"}]
bossbar set minecraft:red_score max 276
bossbar set minecraft:red_score value 276
bossbar set minecraft:red_score style notched_12
bossbar set minecraft:red_score color red
bossbar set minecraft:red_score players @a
bossbar set minecraft:red_score visible true

bossbar add minecraft:blue_score ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"完好","color":"blue"},{"text":" 不恢复","color":"dark_gray"}]
bossbar set minecraft:blue_score max 276
bossbar set minecraft:blue_score value 276
bossbar set minecraft:blue_score style notched_12
bossbar set minecraft:blue_score color blue
bossbar set minecraft:blue_score players @a
bossbar set minecraft:blue_score visible true

# sidebar
scoreboard players reset * sidebar_red
scoreboard players reset * sidebar_blue
scoreboard objectives setdisplay sidebar.team.red sidebar_red
scoreboard objectives setdisplay sidebar.team.blue sidebar_blue
scoreboard players set 左:§d### sidebar_blue 1
scoreboard players set 右:§d### sidebar_blue 0
scoreboard players set 左:§d### sidebar_red 1
scoreboard players set 右:§d### sidebar_red 0






# count down to start
scoreboard players set system_start_countdown system 160

# title
title @a times 0 160 10
title @a title ["游戏即将开始..."]
title @a subtitle ["8"]