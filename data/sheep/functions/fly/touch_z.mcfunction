# sheep:fly/touch_z

scoreboard players set @s s_vz 0

scoreboard players set @s s_temp5 7
scoreboard players operation @s s_vx *= s_temp5
scoreboard players set @s s_temp5 10
scoreboard players operation @s s_vx /= s_temp5

tag @s[tag=!sheep_touch_block_temp] add sheep_touch_block_temp