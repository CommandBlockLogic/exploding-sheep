# ending/tick

scoreboard players remove system_ending_time system 1
execute if score system_ending_time system matches ..0 run function game_mode/ending/end

# clear tower
execute if score system_ending_time system matches 40 run function game_mode/core/center/clear