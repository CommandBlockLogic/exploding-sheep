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

# display
scoreboard players reset * sidebar_red
scoreboard players reset * sidebar_blue
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=80..}] run scoreboard players set 左:§d### sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=53..79}] run scoreboard players set 左:§d##- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=26..52}] run scoreboard players set 左:§d#-- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=..25}] run scoreboard players set 左:§d--- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=80..}] run scoreboard players set 右:§d### sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=53..79}] run scoreboard players set 右:§d##- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=26..52}] run scoreboard players set 右:§d#-- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=..25}] run scoreboard players set 右:§d--- sidebar_blue 0

execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=80}] run scoreboard players set 左:§9### sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=53..79}] run scoreboard players set 左:§9##- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=26..52}] run scoreboard players set 左:§9#-- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=..25}] run scoreboard players set 左:§9--- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=80..}] run scoreboard players set 右:§9### sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=53..79}] run scoreboard players set 右:§9##- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=26..52}] run scoreboard players set 右:§9#-- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=..25}] run scoreboard players set 右:§9--- sidebar_blue 0

execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=80..}] run scoreboard players set 左:§c### sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=53..79}] run scoreboard players set 左:§c##- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=26..52}] run scoreboard players set 左:§c#-- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=..25}] run scoreboard players set 左:§c--- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=80..}] run scoreboard players set 右:§c### sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=53..79}] run scoreboard players set 右:§c##- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=26..52}] run scoreboard players set 右:§c#-- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=..25}] run scoreboard players set 右:§c--- sidebar_blue 0


execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=80..}] run scoreboard players set 左:§d### sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=53..79}] run scoreboard players set 左:§d##- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=26..52}] run scoreboard players set 左:§d#-- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=..25}] run scoreboard players set 左:§d--- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=80..}] run scoreboard players set 右:§d### sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=53..79}] run scoreboard players set 右:§d##- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=26..52}] run scoreboard players set 右:§d#-- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=..25}] run scoreboard players set 右:§d--- sidebar_red 0

execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=80..}] run scoreboard players set 左:§9### sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=53..79}] run scoreboard players set 左:§9##- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=26..52}] run scoreboard players set 左:§9#-- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=..25}] run scoreboard players set 左:§9--- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=80..}] run scoreboard players set 右:§9### sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=53..79}] run scoreboard players set 右:§9##- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=26..52}] run scoreboard players set 右:§9#-- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=..25}] run scoreboard players set 右:§9--- sidebar_red 0

execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=80..}] run scoreboard players set 左:§c### sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=53..79}] run scoreboard players set 左:§c##- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=26..52}] run scoreboard players set 左:§c#-- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=..25}] run scoreboard players set 左:§c--- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=80..}] run scoreboard players set 右:§c### sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=53..79}] run scoreboard players set 右:§c##- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=26..52}] run scoreboard players set 右:§c#-- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=..25}] run scoreboard players set 右:§c--- sidebar_red 0