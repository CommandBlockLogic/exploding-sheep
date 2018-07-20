# battle/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect

# summon core
execute if score system_home_time system matches -60 run function core/clear/all
execute if score system_home_time system matches -60 run function core/generate/home
execute if score system_home_time system matches -60 run function core/generate/corner
execute if score system_home_time system matches -60 run scoreboard players set @e[tag=system_core_mark_small] tower_status 1
execute if score system_home_time system matches -60 run scoreboard players set @e[tag=system_core_mark_big] tower_status 10




# check end
execute if score system_red_score system matches ..0 run function get_score/blue_win
execute if score system_blue_score system matches ..0 run function get_score/red_win

# cal & display home blocks
execute unless entity @e[type=falling_block] run scoreboard players add system_home_time system 1
execute if score system_home_time system matches 20.. run function battle/calculate_home_blocks
execute if score system_home_time system matches 20.. run scoreboard players set system_home_time system 0
# cal & display corner blocks
execute unless entity @e[type=falling_block] run scoreboard players add system_corner_time system 1
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

execute as @e[tag=system_core_mark_red,scores={system_time=400..}] run function core/slice/red
execute as @e[tag=system_core_mark_blue,scores={system_time=400..}] run function core/slice/blue
scoreboard players set @e[tag=system_core_mark,scores={system_time=400..}] system_time 0

