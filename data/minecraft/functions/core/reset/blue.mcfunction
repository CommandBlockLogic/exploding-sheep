# core/reset/blue

execute as @e[tag=system_core_mark_blue] run fill ~-2 ~-20 ~-2 ~2 ~ ~2 minecraft:air replace minecraft:blue_concrete_powder
execute at @e[tag=system_core_mark_blue] run fill ~-1 ~ ~-2 ~1 ~14 ~2 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_blue] run fill ~-2 ~ ~-1 ~2 ~14 ~1 minecraft:blue_concrete_powder keep
