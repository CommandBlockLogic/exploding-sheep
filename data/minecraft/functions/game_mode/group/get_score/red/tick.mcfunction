# get_score/red/tick


# tick
function game_mode/group/get_score/public/game_tick


# check end
execute if score system_game_time system matches ..0 run function game_mode/group/get_score/mid/main

# cal score
execute as @e[tag=system_core_mark_center,scores={core_destory=1..}] run scoreboard players operation system_red_score system += @s core_destory
scoreboard players set @e[tag=system_core_mark,scores={core_destory=1..}] core_destory 0
