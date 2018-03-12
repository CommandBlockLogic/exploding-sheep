# sheep:sheep/fly/decrease_vxz_sqrt

# >250000 y = 0.0005x + 462.84 => y = x/2000 + 463
# 250000< y = 0.0026x + 30.58 => y = x/384 + 31

# square vx, vz and add them together
execute store result score @s s_temp1 run scoreboard players get @s s_vx
execute store result score @s s_temp2 run scoreboard players get @s s_vz
scoreboard players operation @s s_temp1 *= @s s_temp1
scoreboard players operation @s s_temp2 *= @s s_temp2
scoreboard players operation @s s_temp1 += @s s_temp2

# decide to use which formula
execute if score @s s_temp1 matches 0..250000 run scoreboard players set @s s_temp2 384
execute if score @s s_temp1 matches 0..250000 run scoreboard players set @s s_temp3 31
execute unless score @s s_temp1 matches 0..250000 run scoreboard players set @s s_temp2 2000
execute unless score @s s_temp1 matches 0..250000 run scoreboard players set @s s_temp3 463
scoreboard players operation @s s_temp1 /= @s s_temp2
scoreboard players operation @s s_temp1 += @s s_temp3

# friction force
execute unless score @s s_vx matches 0..0 run scoreboard players set @s s_temp2 -100
execute if score @s s_vx matches 0..0 run scoreboard players set @s s_temp2 0
execute store result score @s s_temp3 run scoreboard players get @s s_vx
scoreboard players operation @s s_temp3 *= @s s_temp2
scoreboard players operation @s s_temp3 /= @s s_temp1
execute store result score @s s_ax run scoreboard players get @s s_temp3

execute unless score @s s_vz matches 0..0 run scoreboard players set @s s_temp2 -100
execute if score @s s_vz matches 0..0 run scoreboard players set @s s_temp2 0
execute store result score @s s_temp3 run scoreboard players get @s s_vz
scoreboard players operation @s s_temp3 *= @s s_temp2
scoreboard players operation @s s_temp3 /= @s s_temp1
execute store result score @s s_az run scoreboard players get @s s_temp3