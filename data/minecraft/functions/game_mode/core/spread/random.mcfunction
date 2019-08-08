# game_mode/core/spread/random

# waiting time until summon 150-277ticks
# block number 1-4

# marker
summon minecraft:area_effect_cloud 0 0 0 {Tags:["system_random_mark","system_random_true"]}
summon minecraft:area_effect_cloud 0 0 0 {Tags:["system_random_mark","system_random_false"]}
scoreboard players set @e[tag=system_random_true] system 1
scoreboard players set @e[tag=system_random_false] system 0
scoreboard players set system_two system 2


# random end time
scoreboard players set @e[tag=system_random_true] system 1
scoreboard players set sand_drop_end system 150

scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_end system += @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system

# random start time
scoreboard players set @e[tag=system_random_true] system 1
scoreboard players set sand_drop_start system 0
scoreboard players operation sand_drop_start system = sand_drop_end system

scoreboard players operation sand_drop_start system -= @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system
scoreboard players operation sand_drop_start system -= @e[tag=system_random_mark,limit=1,sort=random] system
scoreboard players operation @e[tag=system_random_true,limit=1] system *= system_two system


# clear
kill @e[tag=system_random_mark]