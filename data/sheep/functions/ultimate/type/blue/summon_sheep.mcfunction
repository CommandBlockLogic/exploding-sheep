# sheep:ultimate/type/blue/summon_sheep

# find place
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_mark_temp"],Duration:9999}
spreadplayers ~ ~ 6 6 false @e[tag=sheep_mark_temp,limit=1]
execute store result entity @e[tag=sheep_mark_temp,limit=1] Pos[1] double 0.001 run data get entity @s Pos[1] 1000
scoreboard players set @e[tag=sheep_mark_temp,limit=1] s_temp1 0
execute as @e[tag=sheep_mark_temp,limit=1] at @s run function sheep:ultimate/type/blue/find_place



execute as @e[tag=sheep_mark_temp,limit=1] at @s run summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_blue_small","sheep_new"],Color:11,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}
scoreboard players set @e[tag=sheep_new] s_sheep_type 201

# add player's id
execute store result score @e[tag=sheep_new,limit=1] s_thrower_id run scoreboard players get @s s_thrower_id
# add player's team
execute if entity @s[tag=sheep_team_red] run tag @e[tag=sheep_new,limit=1] add sheep_team_red
execute if entity @s[tag=sheep_team_blue] run tag @e[tag=sheep_new,limit=1] add sheep_team_blue
# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0

# shot by launcher tag
execute if entity @s[tag=sheep_shot_by_launcher] run tag @e[tag=sheeo_new] add sheep_shot_by_launcher






# remove temp tag
tag @e[tag=sheep_new] remove sheep_new
kill @e[tag=sheep_mark_temp]
