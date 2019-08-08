# ending/tick

scoreboard players remove system_ending_time system 1
execute if score system_ending_time system matches 180 run title @a subtitle ["9秒后回到大厅..."]
execute if score system_ending_time system matches 160 run title @a subtitle ["8秒后回到大厅..."]
execute if score system_ending_time system matches 140 run title @a subtitle ["7秒后回到大厅..."]
execute if score system_ending_time system matches 120 run title @a subtitle ["6秒后回到大厅..."]
execute if score system_ending_time system matches 100 run title @a subtitle ["5秒后回到大厅..."]
execute if score system_ending_time system matches 80 run title @a subtitle ["4秒后回到大厅..."]
execute if score system_ending_time system matches 60 run title @a subtitle ["3秒后回到大厅..."]
execute if score system_ending_time system matches 40 run title @a subtitle ["2秒后回到大厅..."]
execute if score system_ending_time system matches 20 run title @a subtitle ["1秒后回到大厅..."]
execute if score system_ending_time system matches ..0 run function game_mode/ending/end

# clear tower
execute if score system_ending_time system matches 40 run function game_mode/core/clear_all