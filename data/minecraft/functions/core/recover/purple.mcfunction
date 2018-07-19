# core/recover/purple

scoreboard players add @e[tag=system_core_mark_purple] system_time 1
execute at @e[tag=system_core_mark_purple,scores={system_time=400..}] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:purple_concrete_powder keep
scoreboard players set @e[tag=system_core_mark_purple,scores={system_time=400..}] system_time 0