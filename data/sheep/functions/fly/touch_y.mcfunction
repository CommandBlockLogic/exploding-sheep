# sheep:fly/touch_y

scoreboard players set @s s_vy 0

execute if score @s s_vx matches 1..999999 run scoreboard players remove @s s_vx 80
execute if score @s s_vx matches -999999..-1 run scoreboard players add @s s_vx 80
execute if score @s s_vz matches 1..999999 run scoreboard players remove @s s_vz 80
execute if score @s s_vz matches -999999..-1 run scoreboard players add @s s_vz 80

tag @s[tag=!sheep_touch_block_temp] add sheep_touch_block_temp