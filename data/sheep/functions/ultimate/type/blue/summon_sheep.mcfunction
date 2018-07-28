# sheep:ultimate/type/blue/summon_sheep

summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_blue_small","sheep_new"],Color:11,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}
scoreboard players set @e[tag=sheep_new] s_sheep_type 201

# add player's id
execute store result score @e[tag=sheep_new,limit=1] s_thrower_id run scoreboard players get @s s_thrower_id
# add player's team
execute if entity @s[tag=sheep_team_red] run tag @e[tag=sheep_new,limit=1] add sheep_team_red
execute if entity @s[tag=sheep_team_blue] run tag @e[tag=sheep_new,limit=1] add sheep_team_blue
# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0
# tp
spreadplayers ~ ~ 5 1 false @e[tag=sheep_new]
execute as @e[tag=sheep_new] at @s run tp @s ~ ~10 ~
execute as @e[tag=sheep_new] at @s unless block ~ ~ ~ #sheep:chuantou run kill @s





# remove temp tag
tag @e[tag=sheep_new] remove sheep_new