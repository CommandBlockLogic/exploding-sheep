# sheep:fly/decrease_vx

execute if score @s s_vx matches 1..999999 run scoreboard players set @s s_ax -80
execute if score @s s_vx matches -999999..-1 run scoreboard players set @s s_ax 80
