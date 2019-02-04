# public/game_start_clear

gamemode adventure @a
clear @a
effect clear @a
kill @e[tag=sheep_type_blue]
execute as @a store result score @s s_class_2 run scoreboard players get @s s_class
execute as @a run function sheep:ultimate/end
