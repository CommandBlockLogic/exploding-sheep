# battle/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect

# check end
execute if score system_red_score system matches ..0 run function death_match/blue_win
execute if score system_blue_score system matches ..0 run function death_match/red_win

# cal & display home blocks
execute if score system_home_time system matches ..18 run scoreboard players add system_home_time system 1
execute at @e[tag=system_core_mark_red] unless entity @e[type=falling_block,distance=..20] at @e[tag=system_core_mark_blue] unless entity @e[type=falling_block,distance=..20] if score system_home_time system matches 19 run scoreboard players add system_home_time system 1
execute if score system_home_time system matches 20.. run function battle/calculate_home_blocks
execute if score system_home_time system matches 20.. run scoreboard players set system_home_time system 0
# cal & display corner blocks
execute if score system_corner_time system matches ..18 run scoreboard players add system_corner_time system 1
execute at @e[tag=system_core_mark_small_ne] unless entity @e[type=falling_block,distance=..20] at @e[tag=system_core_mark_small_sw] unless entity @e[type=falling_block,distance=..20] if score system_corner_time system matches 19 run scoreboard players add system_corner_time system 1
execute if score system_corner_time system matches 20.. run function battle/calculate_corner_blocks
execute if score system_corner_time system matches 20.. run scoreboard players set system_corner_time system 0



# recover blocks
# 4 stages 276 207 138 69 0
# recover 20 one time
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] if score system_blue_score system matches 0..59 run scoreboard players add @e[tag=system_core_mark_blue] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] if score system_blue_score system matches 80..128 run scoreboard players add @e[tag=system_core_mark_blue] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] if score system_blue_score system matches 149..197 run scoreboard players add @e[tag=system_core_mark_blue] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] if score system_blue_score system matches 218..276 run scoreboard players add @e[tag=system_core_mark_blue] system_time 1

execute as @e[tag=system_core_mark_small,scores={tower_status=3}] if score system_red_score system matches 0..59 run scoreboard players add @e[tag=system_core_mark_red] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=3}] if score system_red_score system matches 80..128 run scoreboard players add @e[tag=system_core_mark_red] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=3}] if score system_red_score system matches 149..197 run scoreboard players add @e[tag=system_core_mark_red] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=3}] if score system_red_score system matches 218..276 run scoreboard players add @e[tag=system_core_mark_red] system_time 1

execute as @e[tag=system_core_mark_red,scores={system_time=150..}] run function core/slice/red
execute as @e[tag=system_core_mark_blue,scores={system_time=150..}] run function core/slice/blue
scoreboard players set @e[tag=system_core_mark,scores={system_time=150..}] system_time 0

