# death_match/pre/tick

# countdown
scoreboard players remove system_start_countdown system 1

# clear core
execute if score system_start_countdown system matches 60 run function core/center/clear


# title
execute if score system_start_countdown system matches 80 run title @a subtitle ["4"]
execute if score system_start_countdown system matches 60 run title @a subtitle [{"text":"3","color":"yellow"}]
execute if score system_start_countdown system matches 40 run title @a subtitle [{"text":"2","color":"gold"}]
execute if score system_start_countdown system matches 20 run title @a subtitle [{"text":"1","color":"red"}]

# no shoot
scoreboard players set @a s_energy 0

# effect
effect give @a minecraft:resistance 5 5 true
effect give @a minecraft:instant_health 1 0 true

# start
execute if score system_start_countdown system matches 0 run function death_match/start