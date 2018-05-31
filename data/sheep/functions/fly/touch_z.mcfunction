# sheep:fly/touch_z

scoreboard players set @s s_vz 0

scoreboard players set @s s_temp5 7
scoreboard players operation @s s_vx *= @s s_temp5
scoreboard players set @s s_temp5 10
scoreboard players operation @s s_vx /= @s s_temp5

execute store result score @s s_temp5 run data get entity @s Pos[2] 1000
scoreboard players operation @s s_temp5 -= @s s_temp4
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s s_temp5

# calculate split speed
function sheep:fly/split_speed

tag @s[tag=!sheep_touch_z] add sheep_touch_z