# core/reset/red

execute as @e[tag=system_core_mark_red] run fill ~-2 ~-20 ~-2 ~2 ~ ~2 minecraft:air replace minecraft:red_concrete_powder
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~14 ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~14 ~1 minecraft:red_concrete_powder keep
