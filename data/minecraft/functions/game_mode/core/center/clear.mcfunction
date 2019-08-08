# game_mode/core/center/clear

execute as @e[tag=system_core_mark_center] at @s run fill ~-4 ~-5 ~-4 ~4 ~10 ~4 minecraft:air replace #minecraft:concrete
execute as @e[tag=system_core_mark_center] at @s run kill @e[type=falling_block,distance=..20]