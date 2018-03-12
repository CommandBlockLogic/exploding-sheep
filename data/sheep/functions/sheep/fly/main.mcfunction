# sheep:sheep/fly/main

# set force
scoreboard players set @s s_ax 0
scoreboard players set @s s_ay -50
scoreboard players set @s s_az 0

execute at @s unless block ~1 ~ ~ minecraft:air if score @s s_vx matches 1..99999999 run function sheep:sheep/fly/touch_x
execute at @s unless block ~-1 ~ ~ minecraft:air if score @s s_vx matches -99999999..-1 run function sheep:sheep/fly/touch_x

execute at @s unless block ~ ~ ~1 minecraft:air if score @s s_vz matches 1..99999999 run function sheep:sheep/fly/touch_z
execute at @s unless block ~ ~ ~-1 minecraft:air if score @s s_vz matches -99999999..-1 run function sheep:sheep/fly/touch_z

execute at @s unless block ~ ~1 ~ minecraft:air run function sheep:sheep/fly/touch_y_p
execute at @s unless block ~ ~-1 ~ minecraft:air run function sheep:sheep/fly/touch_y_n

# set speed
scoreboard players operation @s s_vx += @s s_ax
scoreboard players operation @s s_vy += @s s_ay
scoreboard players operation @s s_vz += @s s_az

execute if score @s s_vx matches -80..80 run scoreboard players set @s s_vx 0
execute if score @s s_vz matches -80..80 run scoreboard players set @s s_vz 0

# change pos
execute store result score @s s_temp1 run data get entity @s Pos[0] 1000
scoreboard players operation @s s_temp1 += @s s_vx
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s s_temp1

execute store result score @s s_temp1 run data get entity @s Pos[1] 1000
scoreboard players operation @s s_temp1 += @s s_vy
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s s_temp1

execute store result score @s s_temp1 run data get entity @s Pos[2] 1000
scoreboard players operation @s s_temp1 += @s s_vz
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s s_temp1