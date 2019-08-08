# game_mode/group/get_score/protect/tick

scoreboard players add protect_barrier_effect system 1
execute if score protect_barrier_effect system matches 42 run scoreboard players set protect_barrier_effect system 0

execute as @e[tag=system_core_mark_center,limit=1] at @s if score @s tower_status matches 2 run function game_mode/group/get_score/protect/blue
execute as @e[tag=system_core_mark_center,limit=1] at @s if score @s tower_status matches 3 run function game_mode/group/get_score/protect/red

