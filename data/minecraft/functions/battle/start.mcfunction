# battle/start

# change flag
scoreboard players set game_status system 3

# tp
tp @a[team=blue] -36 15 -40 -90 0
tp @a[team=red] 40 14 34 100 0
tp @a[team=] 1 23 -1
gamemode spectator @a[team=]

# clear
clear @a
effect clear @a
kill @e[tag=sheep_type_orange]
kill @e[tag=sheep_type_lime]
execute as @a store result score @s s_class_2 run scoreboard players get @s s_class
execute as @a run function sheep:ultimate/end

# title
title @a times 10 50 10
title @a title ["游戏开始!"]
title @a subtitle ["清除对方水晶以获取胜利!"]
tellraw @a [">> 占领地图两侧的",{"text":" 水晶柱 ","color":"light_purple"},"可为己方水晶恢复能量"]

# score
scoreboard players reset * sidebar_score
scoreboard players set 红队 sidebar_score 0
scoreboard players set 蓝队 sidebar_score 0
scoreboard players set system_red_score system 276
scoreboard players set system_blue_score system 276

scoreboard players set system_home_time system -80
scoreboard players set system_corner_time system -80

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
bossbar add minecraft:red_score ["红队主水晶状态: ",{"text":"完好","color":"red"}]
bossbar set minecraft:red_score max 276
bossbar set minecraft:red_score value 276
bossbar set minecraft:red_score style notched_12
bossbar set minecraft:red_score color red
bossbar set minecraft:red_score players @a
bossbar set minecraft:red_score visible true

bossbar add minecraft:blue_score ["蓝队主水晶状态: ",{"text":"完好","color":"blue"}]
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