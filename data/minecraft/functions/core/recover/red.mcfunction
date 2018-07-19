# core/recover/red

scoreboard players add @e[tag=system_core_mark_red] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powder keep
scoreboard players set @e[tag=system_core_mark_red,scores={system_time=400..}] system_time 0