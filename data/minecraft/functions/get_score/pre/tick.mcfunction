# get_score/pre/tick

# tick
function get_score/public/ready_tick

# set tower
execute if score system_start_countdown system matches 160 run scoreboard players set @e[tag=system_core_mark_center] tower_status 2

# start
execute if score system_start_countdown system matches 0 run function get_score/red/main