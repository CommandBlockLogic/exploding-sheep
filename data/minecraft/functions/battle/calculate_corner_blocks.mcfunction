# battle/calculate_corner_blocks

# cal blocks
scoreboard players set @e[tag=system_core_mark_small] system_temp1 0
execute as @e[tag=system_core_mark_small] at @s store result score @s system_temp2 run clone ~-1 ~-20 ~-1 ~1 ~ ~1 ~-1 ~-20 ~-1 filtered minecraft:red_concrete_powder force
execute as @e[tag=system_core_mark_small] at @s store result score @s system_temp1 run clone ~-1 ~-20 ~-1 ~1 ~ ~1 ~-1 ~-20 ~-1 filtered minecraft:blue_concrete_powder force
execute as @e[tag=system_core_mark_small] run scoreboard players operation @s system_temp2 += @s system_temp1
execute as @e[tag=system_core_mark_small] at @s store result score @s system_temp1 run clone ~-1 ~-20 ~-1 ~1 ~ ~1 ~-1 ~-20 ~-1 filtered minecraft:purple_concrete_powder force
execute as @e[tag=system_core_mark_small] run scoreboard players operation @s system_temp2 += @s system_temp1
execute as @e[type=falling_block] run scoreboard players add @e[tag=system_core_mark_small] system_temp2 1

# generate new tower and hint
execute as @e[tag=system_core_mark_small,scores={system_temp2=..0}] run function battle/new_corner

# display
scoreboard players reset * sidebar_red
scoreboard players reset * sidebar_blue
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=47..}] run scoreboard players set 左:§d紫色§r### sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=23..46}] run scoreboard players set 左:§d紫色§r##- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=..22}] run scoreboard players set 左:§d紫色§r#-- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=47..}] run scoreboard players set 右:§d紫色§r### sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=23..46}] run scoreboard players set 右:§d紫色§r##- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=..22}] run scoreboard players set 右:§d紫色§r#-- sidebar_blue 0

execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=47..}] run scoreboard players set 左:§9蓝色§r### sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=23..46}] run scoreboard players set 左:§9蓝色§r##- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=..22}] run scoreboard players set 左:§9蓝色§r#-- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=47..}] run scoreboard players set 右:§9蓝色§r### sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=23..46}] run scoreboard players set 右:§9蓝色§r##- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=..22}] run scoreboard players set 右:§9蓝色§r#-- sidebar_blue 0

execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=47..}] run scoreboard players set 左:§c红色§r### sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=23..46}] run scoreboard players set 左:§c红色§r##- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=..22}] run scoreboard players set 左:§c红色§r#-- sidebar_blue 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=47..}] run scoreboard players set 右:§c红色§r### sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=23..46}] run scoreboard players set 右:§c红色§r##- sidebar_blue 0
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=..22}] run scoreboard players set 右:§c红色§r#-- sidebar_blue 0


execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=47..}] run scoreboard players set 左:§d紫色§r### sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=23..46}] run scoreboard players set 左:§d紫色§r##- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=1,system_temp2=..22}] run scoreboard players set 左:§d紫色§r#-- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=47..}] run scoreboard players set 右:§d紫色§r### sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=23..46}] run scoreboard players set 右:§d紫色§r##- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=1,system_temp2=..22}] run scoreboard players set 右:§d紫色§r#-- sidebar_red 0

execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=47..}] run scoreboard players set 左:§9蓝色§r### sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=23..46}] run scoreboard players set 左:§9蓝色§r##- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=2,system_temp2=..22}] run scoreboard players set 左:§9蓝色§r#-- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=47..}] run scoreboard players set 右:§9蓝色§r### sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=23..46}] run scoreboard players set 右:§9蓝色§r##- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=2,system_temp2=..22}] run scoreboard players set 右:§9蓝色§r#-- sidebar_red 0

execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=47..}] run scoreboard players set 左:§c红色§r### sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=23..46}] run scoreboard players set 左:§c红色§r##- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_sw,limit=1,scores={tower_status=3,system_temp2=..22}] run scoreboard players set 左:§c红色§r#-- sidebar_red 1
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=47..}] run scoreboard players set 右:§c红色§r### sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=23..46}] run scoreboard players set 右:§c红色§r##- sidebar_red 0
execute if entity @e[tag=system_core_mark_small_ne,limit=1,scores={tower_status=3,system_temp2=..22}] run scoreboard players set 右:§c红色§r#-- sidebar_red 0