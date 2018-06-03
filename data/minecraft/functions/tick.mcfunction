# tick

function sheep:tick
function keep_items
execute unless entity @e[tag=system_core_mark_blue] run function keep_mark/core
execute unless entity @e[tag=system_core_mark_red] run function keep_mark/core
execute unless entity @e[tag=system_class_mark] run function keep_mark/class

# hint show
execute as @e[tag=system_class_mark] at @s if entity @a[distance=..3] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_class_mark] at @s unless entity @a[distance=..3] run data merge entity @s {CustomNameVisible:0}


# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:blue_concrete_powder keep
scoreboard players set @e[scores={system_time=400..}] system_time 0

# kill abnormal falling block
execute as @e[type=falling_block] at @s unless block ~ ~-1 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.7 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.3 ~ #minecraft:under_sand run kill @s
kill @e[type=item]