# game_mode/group/get_score/end

execute if score @e[tag=system_core_mark_center,limit=1] tower_status matches 1 run function game_mode/ending/draw
execute if score @e[tag=system_core_mark_center,limit=1] tower_status matches 2 run function game_mode/ending/blue_win
execute if score @e[tag=system_core_mark_center,limit=1] tower_status matches 3 run function game_mode/ending/red_win