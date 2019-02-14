# public/game_start_clear

gamemode adventure @a
clear @a
effect clear @a
kill @e[tag=sheep_type_blue]
scoreboard players set @s s_ulti_energy 0
scoreboard players set @s s_energy 999
execute as @a[scores={s_ulti_time=1..}] run function sheep:ultimate/end