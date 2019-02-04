# get_score/blue/tick

# tick
function game_mode/group/get_score/public/game_tick

# check end
execute if score system_game_time system matches ..0 if score system_red_score system > system_blue_score system run function game_mode/ending/red_win
execute if score system_game_time system matches ..0 if score system_red_score system < system_blue_score system run function game_mode/ending/blue_win
execute if score system_game_time system matches ..0 if score system_red_score system = system_blue_score system run function game_mode/ending/draw

# cal score
execute as @e[tag=system_core_mark_center,scores={core_destory=1..}] run scoreboard players operation system_blue_score system += @s core_destory
scoreboard players set @e[tag=system_core_mark,scores={core_destory=1..}] core_destory 0
