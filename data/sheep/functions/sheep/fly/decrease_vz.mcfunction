# sheep:fly/decrease_vz

execute if score @s s_vz matches 1..999999 run scoreboard players set @s s_az -80
execute if score @s s_vz matches -999999..-1 run scoreboard players set @s s_az 80
