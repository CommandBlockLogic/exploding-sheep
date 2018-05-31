# sheep:fly/touch_x

scoreboard players set @s s_vx 0

scoreboard players set @s s_temp5 4
scoreboard players operation @s s_vz *= s_temp5
scoreboard players set @s s_temp5 10
scoreboard players operation @s s_vz /= s_temp5

tag @s[tag=!sheep_touch_block_temp] add sheep_touch_block_temp