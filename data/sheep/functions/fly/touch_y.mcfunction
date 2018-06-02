# sheep:fly/touch_y

# vy clear
scoreboard players set @s s_vy 0

# vx,vz decay
scoreboard players set @s s_temp5 9
scoreboard players operation @s s_vx *= @s s_temp5
scoreboard players operation @s s_vz *= @s s_temp5
scoreboard players set @s s_temp5 10
scoreboard players operation @s s_vx /= @s s_temp5
scoreboard players operation @s s_vz /= @s s_temp5

# move back
execute store result score @s s_temp5 run data get entity @s Pos[1] 1000
scoreboard players operation @s s_temp5 -= @s s_temp3
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s s_temp5

# calculate split speed
function sheep:fly/split_speed

# add tag
tag @s[tag=!sheep_touch_y] add sheep_touch_y