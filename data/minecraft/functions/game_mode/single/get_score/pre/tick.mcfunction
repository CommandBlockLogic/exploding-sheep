# game_mode/single/get_score/pre/tick

# countdown
scoreboard players remove system_start_countdown system 1


# title
execute if score system_start_countdown system matches 80 run title @a subtitle ["4"]
execute if score system_start_countdown system matches 60 run title @a subtitle [{"text":"3","color":"yellow"}]
execute if score system_start_countdown system matches 40 run title @a subtitle [{"text":"2","color":"gold"}]
execute if score system_start_countdown system matches 20 run title @a subtitle [{"text":"1","color":"red"}]

# set tower
execute if score system_start_countdown system matches 90 run scoreboard players set @e[tag=system_core_mark_center] tower_status 1
# clear core
execute if score system_start_countdown system matches 95 run function core/center/clear
# summon core
execute if score system_start_countdown system matches ..85 run function game_mode/group/get_score/public/summon_core_fast



# no shoot
scoreboard players set @a s_energy 0

# effect
effect give @a minecraft:resistance 5 5 true
effect give @a minecraft:instant_health 1 0 true

# start
execute if score system_start_countdown system matches 0 run function game_mode/single/get_score/start