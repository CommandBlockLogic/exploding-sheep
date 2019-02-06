# sheep:sheep_effect/lime/clear_ulti

tag @s add sheep_temp
execute as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run scoreboard players set @s s_ulti_energy 0
tag @s remove sheep_temp