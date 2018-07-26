# battle/pre/tick

# countdown
scoreboard players remove system_start_countdown system 1

# title
execute if score system_start_countdown system matches 140 run title @a subtitle ["7"]
execute if score system_start_countdown system matches 120 run title @a subtitle ["6"]
execute if score system_start_countdown system matches 100 run title @a subtitle ["5"]
execute if score system_start_countdown system matches 80 run title @a subtitle ["4"]
execute if score system_start_countdown system matches 60 run title @a subtitle [{"text":"3","color":"yellow"}]
execute if score system_start_countdown system matches 40 run title @a subtitle [{"text":"2","color":"gold"}]
execute if score system_start_countdown system matches 20 run title @a subtitle [{"text":"1","color":"red"}]



# summon core
execute if score system_start_countdown system matches 100 run function core/clear/all
execute if score system_start_countdown system matches 100 run function core/generate/home
execute if score system_start_countdown system matches 100 run function core/generate/corner
execute if score system_start_countdown system matches 100 run scoreboard players set @e[tag=system_core_mark_small] tower_status 1
execute if score system_start_countdown system matches 100 run scoreboard players set @e[tag=system_core_mark_big] tower_status 10





# no shoot
scoreboard players set @a s_energy 0

# start
execute if score system_start_countdown system matches 0 run function battle/start