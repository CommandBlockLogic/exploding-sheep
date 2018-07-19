# battle/main

# add player num
scoreboard players set player_count_red system 0
scoreboard players set player_count_blue system 0
execute as @a[team=red] run scoreboard players add player_count_red system 1
execute as @a[team=blue] run scoreboard players add player_count_blue system 1

# init flag
scoreboard players set system_flag system 0
# check if greater than 1
execute if score player_count_red system matches 1.. if score player_count_blue system matches 1.. run scoreboard players add system_flag system 1
execute if score system_flag system matches 0 run tellraw @a [">> 人数不足!"]
# check if balance
scoreboard players operation player_count_red system -= player_count_blue system
execute if score system_flag system matches 1 unless score player_count_red system matches -1..1 run tellraw @a [">> 队伍人数不平衡!"]
execute if score system_flag system matches 1 if score player_count_red system matches -1..1 run function battle/start