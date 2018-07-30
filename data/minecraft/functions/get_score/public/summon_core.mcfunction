# get_score/public/summon_core

scoreboard players add system_clock1 system 1
execute if score system_clock1 system matches 3 run function core/center/generate
execute if score system_clock1 system matches 3.. run scoreboard players set system_clock1 system 0
