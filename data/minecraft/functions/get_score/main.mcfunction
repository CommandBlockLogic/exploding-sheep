# get_score/main

# check player num
execute as @a[team=red] run scoreboard players add player_count_red system 1
execute as @a[team=blue] run scoreboard players add player_count_blue system 1
scoreboard players operation player_count_red system -= player_count_blue system
execute unless score player_count_red system matches -1..1 run tellraw @a [">> 队伍人数不平衡!"]
execute if score player_count_red system matches -1..1 run function get_score/start