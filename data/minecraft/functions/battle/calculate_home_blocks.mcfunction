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

# cal tower num
scoreboard players set @s system_temp1 0
scoreboard players set @s system_temp2 0
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] run scoreboard players add @e[tag=tower] system_temp1 1
execute as @e[tag=system_core_mark_small,scores={tower_status=3}] run scoreboard players add @e[tag=tower] system_temp2 1

# display bossbar
execute if score system_red_score system matches 217.. if score @s system_temp2 matches 0 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"完好","color":"red"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_red_score system matches 217.. if score @s system_temp2 matches 1 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"完好","color":"red"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_red_score system matches 217.. if score @s system_temp2 matches 2 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"完好","color":"red"},{"text":" 加速恢复中...","color":"white"}]
execute if score system_red_score system matches 148..216 if score @s system_temp2 matches 0 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"残缺","color":"gold"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_red_score system matches 148..216 if score @s system_temp2 matches 1 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"残缺","color":"gold"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_red_score system matches 148..216 if score @s system_temp2 matches 2 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"残缺","color":"gold"},{"text":" 加速恢复中...","color":"white"}]
execute if score system_red_score system matches 79..147 if score @s system_temp2 matches 0 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"碎裂","color":"white"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_red_score system matches 79..147 if score @s system_temp2 matches 1 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"碎裂","color":"white"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_red_score system matches 79..147 if score @s system_temp2 matches 2 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"碎裂","color":"white"},{"text":" 加速恢复中...","color":"white"}]
execute if score system_red_score system matches ..78 if score @s system_temp2 matches 0 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"渣渣","color":"gray"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_red_score system matches ..78 if score @s system_temp2 matches 1 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"渣渣","color":"gray"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_red_score system matches ..78 if score @s system_temp2 matches 2 run bossbar set minecraft:red_score name ["",{"text":"红队","color":"red"},"主水晶状态: ",{"text":"渣渣","color":"gray"},{"text":" 加速恢复中...","color":"white"}]

execute if score system_blue_score system matches 217.. if score @s system_temp1 matches 0 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"完好","color":"blue"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_blue_score system matches 217.. if score @s system_temp1 matches 1 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"完好","color":"blue"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_blue_score system matches 217.. if score @s system_temp1 matches 2 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"完好","color":"blue"},{"text":" 加速恢复中...","color":"white"}]
execute if score system_blue_score system matches 148..216 if score @s system_temp1 matches 0 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"残缺","color":"aqua"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_blue_score system matches 148..216 if score @s system_temp1 matches 1 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"残缺","color":"aqua"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_blue_score system matches 148..216 if score @s system_temp1 matches 2 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"残缺","color":"aqua"},{"text":" 加速恢复中...","color":"white"}]
execute if score system_blue_score system matches 79..147 if score @s system_temp1 matches 0 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"碎裂","color":"white"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_blue_score system matches 79..147 if score @s system_temp1 matches 1 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"碎裂","color":"white"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_blue_score system matches 79..147 if score @s system_temp1 matches 2 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"碎裂","color":"white"},{"text":" 加速恢复中...","color":"white"}]
execute if score system_blue_score system matches ..78 if score @s system_temp1 matches 0 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"渣渣","color":"gray"},{"text":" 不恢复","color":"dark_gray"}]
execute if score system_blue_score system matches ..78 if score @s system_temp1 matches 1 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"渣渣","color":"gray"},{"text":" 缓慢恢复中...","color":"gray"}]
execute if score system_blue_score system matches ..78 if score @s system_temp1 matches 2 run bossbar set minecraft:blue_score name ["",{"text":"蓝队","color":"blue"},"主水晶状态: ",{"text":"渣渣","color":"gray"},{"text":" 加速恢复中...","color":"white"}]

# hint
execute if score system_red_score system matches 148..216 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 10 run title @a title ["",{"text":"红队","color":"red"},"主水晶残缺了"]
execute if score system_red_score system matches 148..216 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 10 run title @a subtitle ["已无法恢复至完好状态"]
execute if score system_red_score system matches 148..216 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 10 run scoreboard players set @e[tag=system_core_mark_red,limit=1] tower_status 11
execute if score system_red_score system matches 79..147 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 11 run title @a title ["",{"text":"红队","color":"red"},"主水晶碎裂了"]
execute if score system_red_score system matches 79..147 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 11 run title @a subtitle ["已无法恢复至残缺状态"]
execute if score system_red_score system matches 79..147 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 11 run scoreboard players set @e[tag=system_core_mark_red,limit=1] tower_status 12
execute if score system_red_score system matches ..78 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 12 run title @a title ["",{"text":"红队","color":"red"},"主水晶渣渣了"]
execute if score system_red_score system matches ..78 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 12 run title @a subtitle ["已无法恢复至碎裂状态"]
execute if score system_red_score system matches ..78 if score @e[tag=system_core_mark_red,limit=1] tower_status matches 12 run scoreboard players set @e[tag=system_core_mark_red,limit=1] tower_status 13

execute if score system_blue_score system matches 148..216 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 10 run title @a title ["",{"text":"蓝队","color":"blue"},"主水晶残缺了."]
execute if score system_blue_score system matches 148..216 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 10 run title @a subtitle ["已无法恢复至完好状态"]
execute if score system_blue_score system matches 148..216 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 10 run scoreboard players set @e[tag=system_core_mark_blue,limit=1] tower_status 11
execute if score system_blue_score system matches 79..147 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 11 run title @a title ["",{"text":"蓝队","color":"blue"},"主水晶碎裂了"]
execute if score system_blue_score system matches 79..147 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 11 run title @a subtitle ["已无法恢复至残缺状态"]
execute if score system_blue_score system matches 79..147 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 11 run scoreboard players set @e[tag=system_core_mark_blue,limit=1] tower_status 12
execute if score system_blue_score system matches ..78 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 12 run title @a title ["",{"text":"蓝队","color":"blue"},"主水晶渣渣了"]
execute if score system_blue_score system matches ..78 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 12 run title @a subtitle ["已无法恢复至碎裂状态"]
execute if score system_blue_score system matches ..78 if score @e[tag=system_core_mark_blue,limit=1] tower_status matches 12 run scoreboard players set @e[tag=system_core_mark_blue,limit=1] tower_status 13