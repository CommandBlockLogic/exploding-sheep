# sheep:fan/turn

# save wind motion
execute store result score @s s_temp5 run scoreboard players get @a[tag=sheep_fanning,limit=1] s_temp2
execute store result score @s s_temp6 run scoreboard players get @a[tag=sheep_fanning,limit=1] s_temp3
execute store result score @s s_temp7 run scoreboard players get @a[tag=sheep_fanning,limit=1] s_temp4

# if it's heavy sheep
#execute if entity @s[tag=sheep_type_heavy] run scoreboard players set @s s_temp5 0
#execute if entity @s[tag=sheep_type_heavy] run scoreboard players set @s s_temp6 0
#execute if entity @s[tag=sheep_type_heavy] run scoreboard players set @s s_temp7 0
# if it's fast sheep
#scoreboard players set @s[tag=sheep_type_fast] s_temp1 2
#execute if entity @s[tag=sheep_type_fast] run scoreboard players operation @s s_temp5 /= @s s_temp1
#execute if entity @s[tag=sheep_type_fast] run scoreboard players operation @s s_temp6 /= @s s_temp1
#execute if entity @s[tag=sheep_type_fast] run scoreboard players operation @s s_temp7 /= @s s_temp1
# if it's ball sheep
scoreboard players set @s[tag=sheep_type_ball] s_temp1 3
execute if entity @s[tag=sheep_type_ball] run scoreboard players operation @s s_temp5 /= @s s_temp1
execute if entity @s[tag=sheep_type_ball] run scoreboard players operation @s s_temp6 /= @s s_temp1
execute if entity @s[tag=sheep_type_ball] run scoreboard players operation @s s_temp7 /= @s s_temp1
execute if entity @s[tag=sheep_type_ball] run scoreboard players set @s s_vx 0
execute if entity @s[tag=sheep_type_ball] run scoreboard players set @s s_vy 0
execute if entity @s[tag=sheep_type_ball] run scoreboard players set @s s_vz 0


# add wind motion
scoreboard players operation @s s_vx += @s s_temp5
scoreboard players operation @s s_vy += @s s_temp6
scoreboard players operation @s s_vz += @s s_temp7