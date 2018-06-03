# tick

function sheep:tick
function keep_items
execute unless entity @e[tag=system_core_mark_blue] run function keep_mark/core
execute unless entity @e[tag=system_core_mark_red] run function keep_mark/core
execute unless entity @e[tag=system_class_mark] run function keep_mark/class

# hint show
execute as @e[tag=system_class_mark,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..7] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_class_mark,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..7] run data merge entity @s {CustomNameVisible:0}
# change class
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 run tellraw @s [">> 切换至 §f普通§r 系"]
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 run scoreboard players set @s s_class 1
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 2 run tellraw @s [">> 切换至 §7笨重§r 系"]
execute at @e[tag=system_class_mark_gray] as @a[distance=..0.3] unless score @s s_class matches 2 run scoreboard players set @s s_class 2
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 3 run tellraw @s [">> 切换至 §9失重§r 系"]
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 run scoreboard players set @s s_class 3
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 4 run tellraw @s [">> 切换至 §c瞬发§r 系"]
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 run scoreboard players set @s s_class 4
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 5 run tellraw @s [">> 切换至 §b冰冻§r 系"]
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 run scoreboard players set @s s_class 5
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 6 run tellraw @s [">> 切换至 §d治愈§r 系"]
execute at @e[tag=system_class_mark_pink] as @a[distance=..0.3] unless score @s s_class matches 6 run scoreboard players set @s s_class 6



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