# battle/calculate_corner_blocks

# cal blocks
scoreboard players set @e[tag=system_core_mark_small] system_temp1 0
execute as @e[tag=system_core_mark_small] at @s store result score @s system_temp2 run clone ~-1 ~-20 ~-1 ~1 ~ ~1 ~-1 ~-20 ~-1 filtered minecraft:red_concrete_powder force
execute as @e[tag=system_core_mark_small] at @s store result score @s system_temp1 run clone ~-1 ~-20 ~-1 ~1 ~ ~1 ~-1 ~-20 ~-1 filtered minecraft:blue_concrete_powder force
execute as @e[tag=system_core_mark_small] run scoreboard players operation @s system_temp2 += @s system_temp1
execute as @e[tag=system_core_mark_small] at @s store result score @s system_temp1 run clone ~-1 ~-20 ~-1 ~1 ~ ~1 ~-1 ~-20 ~-1 filtered minecraft:purple_concrete_powder force
execute as @e[tag=system_core_mark_small] run scoreboard players operation @s system_temp2 += @s system_temp1

# generate new tower and hint
execute as @e[tag=system_core_mark_small,scores={system_temp2=..0}] run function battle/new_corner

