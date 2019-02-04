# get_score/mid/tick

# tick
function game_mode/group/get_score/public/ready_tick

# set tower
execute if score system_start_countdown system matches 170 run scoreboard players set @e[tag=system_core_mark_center] tower_status 3


# start
execute if score system_start_countdown system matches 0 run function game_mode/group/get_score/blue/main