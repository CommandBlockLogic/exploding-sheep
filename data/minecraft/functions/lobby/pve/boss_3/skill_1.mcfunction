# 技能冷却
scoreboard players set 技能冷却 boss_3_cool1 400
scoreboard players add @e[tag=boss3] boss_3_cool1 1
execute as @e[tag=boss3] if score @s boss_3_cool1 >= 技能冷却 boss_3_cool1 run tag @s add boss_3_skill_1
execute as @e[tag=boss3,tag=boss_3_skill_1] at @s run summon minecraft:zombie ^2 ^ ^ {HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}}],CustomName:"{\"text\":\"泰坦\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["monster","boss_3_summon_1"],Attributes:[{Base:5.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:5.0f,PersistenceRequired:1b,FallFlying:1b}

execute if entity @e[tag=boss3] unless entity @e[tag=boss_3_skill_1_2] as @e[tag=boss3] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能一召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_3_skill_1_2"]}
execute store result entity @e[tag=boss_3_skill_1_2,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss3,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_3_skill_1_2,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss3,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_3_skill_1_2,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss3,limit=1] Pos[2] 1000
execute as @e[tag=boss_3_skill_1_2] at @s run tp @s ~ ~0.2 ~ ~ ~

execute as @e[tag=boss3] at @s positioned ~ ~1.25 ~ run effect give @e[tag=monster,distance=..6] strength 3 1 true

execute as @e[tag=boss_3_skill_1_2] at @s positioned ^ ^0.25 ^6 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^-3 ^0.25 ^5.2 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^-5.2 ^0.25 ^3 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^6 ^0.25 ^ run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^5.2 ^0.25 ^3 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^3 ^0.25 ^5.2 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^ ^0.25 ^-6 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^3 ^0.25 ^-5.2 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^5.2 ^0.25 ^-3 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^-6 ^0.25 ^ run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^-5.2 ^0.25 ^-3 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_1_2] at @s positioned ^-3 ^0.25 ^-5.2 run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force



execute as @e[tag=boss3] if score @s boss_3_cool1 >= 技能冷却 boss_3_cool1 run tag @s remove boss_3_skill_1
execute as @e[tag=boss3] if score @s boss_3_cool1 >= 技能冷却 boss_3_cool1 run scoreboard players set @s boss_3_cool1 0

scoreboard players set 召唤物限时 boss_3_cool1 400
scoreboard players add @e[tag=boss_3_summon_1,type=minecraft:zombie] boss_3_cool1 1
execute as @e[type=minecraft:zombie,tag=boss_3_summon_1] if score @s boss_3_cool1 >= 召唤物限时 boss_3_cool1 run kill @s