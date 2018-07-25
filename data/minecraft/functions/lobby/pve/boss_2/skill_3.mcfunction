execute if entity @e[tag=boss2] unless entity @e[tag=boss_2_skill_3] as @e[tag=boss2] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能三召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_2_skill_3"]}

execute store result entity @e[tag=boss_2_skill_3,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss2,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_2_skill_3,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss2,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_2_skill_3,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss2,limit=1] Pos[2] 1000
execute as @e[tag=boss_2_skill_3] at @s run tp @s ~ ~ ~ ~1 ~

execute unless entity @e[tag=boss2] run kill @e[tag=boss_2_skill_3]

scoreboard players set 技能冷却 boss_2_cool3 200
scoreboard players add @e[tag=boss2] boss_2_cool3 1
execute as @e[tag=boss2] at @s if entity @a[distance=..16] if score @s boss_2_cool3 >= 技能冷却 boss_2_cool3 run tag @e[tag=boss_2_skill_3] add boss_2_skill_3_use
execute as @e[tag=boss2] if score @s boss_2_cool3 >= 技能冷却 boss_2_cool3 run scoreboard players set @s boss_2_cool3 0

execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s positioned ~ ~1.25 ~ run particle minecraft:dust 1 0 0 1 ^ ^ ^2 .01 1 .01 0.0001 40 force
execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s positioned ~ ~1.25 ~ run particle minecraft:dust 1 0 0 1 ^ ^ ^-2 .01 1 .01 0.0001 40 force

execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s positioned ~ ~ ~ run summon minecraft:zombie ^ ^ ^3 {Tags:["monster"],CustomName:"{\"text\":\"僵尸-I\",\"color\":\"red\"}",CustomNameVisible:1b,HandItems:[{id:"minecraft:stick",Count:1,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:5}]}},{}]}
execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s positioned ~ ~ ~ run summon minecraft:zombie ^ ^ ^-3 {Tags:["monster"],CustomName:"{\"text\":\"僵尸-II\",\"color\":\"red\"}",CustomNameVisible:1b,HandItems:[{id:"minecraft:stick",Count:1,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}},{}]}
tag @e[tag=boss_2_skill_3] remove boss_2_skill_3_use

