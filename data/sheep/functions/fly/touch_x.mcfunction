# sheep:fly/touch_x

scoreboard players set @s s_vx 0

execute if score @s s_vz matches 1..999999 run scoreboard players remove @s s_vz 80
execute if score @s s_vz matches -999999..-1 run scoreboard players add @s s_vz 80

tag @s[tag=!sheep_touch_block_temp] add sheep_touch_block_temp