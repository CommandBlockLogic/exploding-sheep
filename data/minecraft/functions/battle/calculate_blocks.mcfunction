# battle/calculate_blocks

# cal blocks
execute as @e[tag=system_core_mark_red] at @s store result score system_red_score system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:red_concrete_powder force
execute as @e[tag=system_core_mark_red] at @s store result score system_temp system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:red_concrete force
scoreboard players operation system_red_score system += system_temp system
execute as @e[tag=system_core_mark_blue] at @s store result score system_blue_score system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:blue_concrete_powder force
execute as @e[tag=system_core_mark_blue] at @s store result score system_temp system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:blue_concrete force
scoreboard players operation system_blue_score system += system_temp system
# display blocks
execute store result score 红队 sidebar_score run scoreboard players get system_red_score system
execute store result score 蓝队 sidebar_score run scoreboard players get system_blue_score system
