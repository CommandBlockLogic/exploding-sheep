# tick
function sheep:tick
function keep_items

scoreboard players add @e[tag=system_core_mark] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder
execute at @e[tag=system_core_mark_red,scores={system_time=400}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powderexecute at @e[tag=system_core_mark_red,scores={system_time=400}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder
execute at @e[tag=system_core_mark_blue,scores={system_time=400}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:blue_concrete_powder
execute at @e[tag=system_core_mark_blue,scores={system_time=400}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:blue_concrete_powderexecute at @e[tag=system_core_mark_red,scores={system_time=400}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder
scoreboard players set @e[scores={system_time=400}] system_time 0