# public/game_start_clear

gamemode adventure @a
clear @a
effect clear @a
kill @e[tag=sheep_type_blue]
scoreboard players set @a s_ulti_energy 0
scoreboard players set @a s_energy 999
execute as @a[scores={s_ulti_time=1..}] run function sheep:ultimate/end
scoreboard players set @a death_time 0
scoreboard players set @a[scores={s_class=1000..}] s_launch_type 1
scoreboard players set @a[scores={s_class=1000..}] s_class 1