# sheep:fly/touch_y

scoreboard players set @s s_vy 0

scoreboard players set @s s_temp5 9
scoreboard players operation @s s_vx *= @s s_temp5
scoreboard players operation @s s_vz *= @s s_temp5
scoreboard players set @s s_temp5 10
scoreboard players operation @s s_vx /= @s s_temp5
scoreboard players operation @s s_vz /= @s s_temp5

tag @s[tag=!sheep_touch_block_temp] add sheep_touch_block_temp