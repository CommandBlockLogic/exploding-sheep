# battle/calculate_blocks

# cal blocks
execute as @e[tag=system_core_mark_red] at @s store result score system_red_score system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:red_concrete_powder force
execute as @e[tag=system_core_mark_red] at @s store result score system_temp system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:red_concrete force
execute as @e[tag=system_core_mark_red] at @s positioned ~-2 ~-20 ~-2 as @e[type=falling_block,dx=2,dy=20,dz=2] run scoreboard players add system_red_score system 1
scoreboard players operation system_red_score system += system_temp system
execute as @e[tag=system_core_mark_blue] at @s store result score system_blue_score system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:blue_concrete_powder force
execute as @e[tag=system_core_mark_blue] at @s store result score system_temp system run clone ~-2 ~-20 ~-2 ~2 ~ ~2 ~-2 ~-20 ~-2 filtered minecraft:blue_concrete force
execute as @e[tag=system_core_mark_blue] at @s positioned ~-2 ~-20 ~-2 as @e[type=falling_block,dx=2,dy=20,dz=2] run scoreboard players add system_blue_score system 1
scoreboard players operation system_blue_score system += system_temp system

# display blocks
execute store result bossbar minecraft:red_score value run scoreboard players get system_red_score system
execute store result bossbar minecraft:blue_score value run scoreboard players get system_blue_score system

execute if score system_red_score system matches 217.. run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"完好","color":"dark_red"}]
execute if score system_red_score system matches 148..216 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"残缺","color":"red"}]
execute if score system_red_score system matches 79..147 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"碎裂","color":"gray"}]
execute if score system_red_score system matches ..78 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"渣渣","color":"dark_gray"}]

execute if score system_blue_score system matches 217.. run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"完好","color":"blue"}]
execute if score system_blue_score system matches 148..216 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"残缺","color":"aqua"}]
execute if score system_blue_score system matches 79..147 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"碎裂","color":"gray"}]
execute if score system_blue_score system matches ..78 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"渣渣","color":"dark_gray"}]