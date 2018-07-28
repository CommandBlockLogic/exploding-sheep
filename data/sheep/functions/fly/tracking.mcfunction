# sheep:fly/tracking

# find target
tag @s add sheep_temp
execute if score @s s_target_id matches 1.. at @s as @a[distance=..50] if score @s s_id = @e[tag=sheep_temp,limit=1] s_target_id run tag @s add player_temp
execute if score @s s_target_id matches 0 run tag @e[tag=monster_target,distance=..15] add player_temp

# get rotation
execute store result score @s s_temp1 run data get entity @s Rotation[0] 100000
execute store result score @s s_temp2 run data get entity @s Rotation[1] 100000
execute at @s facing entity @e[tag=player_temp,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute store result score @s s_temp3 run data get entity @s Rotation[0] 100000
execute store result score @s s_temp4 run data get entity @s Rotation[1] 100000
execute store result entity @s Rotation[0] float 0.00001 run scoreboard players get @s s_temp1
execute store result entity @s Rotation[1] float 0.00001 run scoreboard players get @s s_temp2

# cal x-rot
execute store result score @s s_temp5 run scoreboard players get @s s_temp1
scoreboard players operation @s s_temp5 -= @s s_temp2
execute at @s if score @s s_temp5 matches ..-1 run tp @s ~ ~ ~ ~2 ~
execute at @s if score @s s_temp5 matches 1.. run tp @s ~ ~ ~ ~-2 ~
# cal y-rot
execute store result score @s s_temp5 run scoreboard players get @s s_temp3
scoreboard players operation @s s_temp5 -= @s s_temp4
execute at @s if score @s s_temp5 matches ..-1 run tp @s ~ ~ ~ ~ ~-2
execute at @s if score @s s_temp5 matches 1.. run tp @s ~ ~ ~ ~ ~2

# detect and tp
execute at @s positioned ^ ^ ^0.3 unless block ~ ~ ~ #sheep:chuantou run tag @s add sheep_collision
execute at @s positioned ^ ^ ^0.3 if entity @a[gamemode=!spectator,distance=..1,scores={s_flying_time=20..}] run tag @s add sheep_collision
execute at @s[tag=!sheep_collision] positioned ^ ^ ^0.3 run tp @s ~ ~ ~

# clear
tag @e[tag=sheep_collision] remove sheep_attr_tracking
scoreboard players set @e[tag=sheep_collision] s_blow_time 1
tag @e[tag=sheep_collision] remove sheep_collision
tag @e[tag=sheep_temp] remove sheep_temp
tag @e[tag=player_temp] remove player_temp