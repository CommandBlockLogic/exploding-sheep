# sheep:ultimate/type/lime/summon_and_add_target

execute if entity @a[tag=player_target,limit=1] at @s run summon minecraft:sheep ~ ~2 ~ {Tags:["sheep_sheep","sheep_type_lime","sheep_attr_tracking","sheep_new","sheep_new2"],Color:5,Silent:1,Age:-999999,Invulnerable:1,NoAI:1,NoGravity:1}
execute store result score @e[tag=sheep_new2,limit=1] s_target_id run scoreboard players get @a[tag=player_target,limit=1] s_id
execute facing entity @a[tag=player_target,limit=1] feet run tp @e[tag=sheep_new2,limit=1] ~ ~ ~ ~ ~
tag @e[tag=sheep_new2] remove sheep_new2
tag @a[tag=player_target,limit=1] remove player_target
