# core/reset/red

execute as @e[tag=system_core_mark_red] at @s run fill ~-2 ~-20 ~-2 ~2 ~ ~2 minecraft:air replace minecraft:red_concrete_powder
execute as @e[tag=system_core_mark_red] at @s run fill ~-1 ~ ~-2 ~1 ~14 ~2 minecraft:red_concrete_powder keep
execute as @e[tag=system_core_mark_red] at @s run fill ~-2 ~ ~-1 ~2 ~14 ~1 minecraft:red_concrete_powder keep
