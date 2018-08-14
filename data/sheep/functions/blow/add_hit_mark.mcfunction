# sheep:blow/add_hit_mark

execute store result score @s s_thrower_id run scoreboard players get @e[tag=sheep_temp,limit=1] s_thrower_id
execute store result score @s s_sheep_type run scoreboard players get @e[tag=sheep_temp,limit=1] s_sheep_type
scoreboard players set @s s_kill_time 0
