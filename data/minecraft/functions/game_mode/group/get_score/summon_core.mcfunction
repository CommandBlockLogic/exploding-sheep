# game_mode/group/get_score/summon_core

scoreboard players add system_clock1 system 1
execute if score system_clock1 system matches 2 run function game_mode/core/center/generate
execute if score system_clock1 system matches 2.. run scoreboard players set system_clock1 system 0