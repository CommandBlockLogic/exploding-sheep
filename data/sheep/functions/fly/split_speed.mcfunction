# sheep:fly/split_speed

# calculate split speed
scoreboard players set @s s_temp1 5
execute store result score @s s_temp2 run scoreboard players get @s s_vx
execute store result score @s s_temp3 run scoreboard players get @s s_vy
execute store result score @s s_temp4 run scoreboard players get @s s_vz
scoreboard players operation @s s_temp2 /= @s s_temp1
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp4 /= @s s_temp1