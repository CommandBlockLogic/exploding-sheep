# get_score/pre/main

# change flag
scoreboard players set game_status system 102

# tp
tp @a 0 39 0
gamemode adventure @a

# clear
clear @a
effect clear @a
kill @e[tag=sheep_type_blue]
execute as @a store result score @s s_class_2 run scoreboard players get @s s_class
execute as @a run function sheep:ultimate/end