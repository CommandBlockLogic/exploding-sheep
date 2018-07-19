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




# check end
execute if score system_red_score system matches ..0 run function get_score/blue_win
execute if score system_blue_score system matches ..0 run function get_score/red_win

# cal & display home blocks
scoreboard players add system_home_time system 1
execute if score system_home_time system matches 20.. run function battle/calculate_home_blocks
execute if score system_home_time system matches 20.. run scoreboard players set system_home_time system 0
# cal & display corner blocks
scoreboard players add system_corner_time system 1
execute if score system_corner_time system matches 20.. run function battle/calculate_corner_blocks
execute if score system_corner_time system matches 20.. run scoreboard players set system_corner_time system 0



# recover blocks
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] run scoreboard players add @e[tag=system_core_mark_blue] system_time 1
execute as @e[tag=system_core_mark_small,scores={tower_status=3}] run scoreboard players add @e[tag=system_core_mark_red] system_time 1
execute as @e[tag=system_core_mark_red,scores={system_time=400..}] run function core/slice/blue
execute as @e[tag=system_core_mark_blue,scores={system_time=400..}] run function core/slice/red
scoreboard players set @e[tag=system_core_mark,scores={system_time=400..}] system_time 0

