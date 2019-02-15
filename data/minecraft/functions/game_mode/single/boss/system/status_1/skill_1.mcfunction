summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["sheep_mark"]}

summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_fast","sheep_new"],Color:4,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1}
tp @e[tag=sheep_mark,limit=1] ^ ^ ^1.2
scoreboard players set @e[tag=sheep_new] s_sheep_type 3

tag @e[tag=sheep_new,limit=1] add sheep_team_boss

# turn the sheep's face
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=sheep_mark,limit=1]

# give sheep v0
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vx run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[1] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[1] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vy run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vz run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1


# add player's id
scoreboard players set @e[tag=sheep_new,limit=1] s_thrower_id -1

# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0

# kill marker and remove temp tag
kill @e[tag=sheep_mark]
tag @e[tag=sheep_new] remove sheep_new