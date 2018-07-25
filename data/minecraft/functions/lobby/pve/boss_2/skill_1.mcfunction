scoreboard players set 技能冷却 boss_2_cool1 200
scoreboard players add @e[tag=boss2] boss_2_cool1 1
execute as @e[tag=boss2] at @s if entity @a[distance=..16] if score @s boss_2_cool1 >= 技能冷却 boss_2_cool1 run tag @s add boss_2_skill_1
execute as @e[tag=boss2,tag=boss_2_skill_1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=boss2,tag=boss_2_skill_1] at @s positioned ~ ~1.25 ~ run summon minecraft:armor_stand ^ ^ ^2 {CustomName:"{\"text\":\"技能一召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_2_summon_1"]}
execute if entity @e[tag=boss2,tag=boss_2_skill_1] as @e[type=minecraft:armor_stand,tag=boss_2_summon_1] at @s run tp @s ~ ~ ~ facing entity @p feet
execute if entity @e[tag=boss2,tag=boss_2_skill_1] run tag @e[tag=boss2,tag=boss_2_skill_1] remove boss_2_skill_1
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_1] at @s run tp @s ^ ^ ^0.5
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_1] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 10 force
execute as @e[tag=boss_2_summon_1] at @s run summon minecraft:evoker_fangs ~ ~ ~ {Warmup:20}
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_1] at @s if entity @a[distance=..0.5] run kill @s
execute as @e[tag=boss2] if score @s boss_2_cool1 >= 技能冷却 boss_2_cool1 run scoreboard players set @s boss_2_cool1 0

execute unless entity @e[tag=boss2] run kill @e[tag=boss_2_summon_1]


scoreboard players set 召唤物限时 boss_2_cool1 30
scoreboard players add @e[tag=boss_2_summon_1,type=minecraft:armor_stand] boss_2_cool1 1
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_1] if score @s boss_2_cool1 >= 召唤物限时 boss_2_cool1 run kill @s
scoreboard players add @e[tag=boss_2_summon_2,type=minecraft:armor_stand] boss_2_cool1 1
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_2] at @s if score @s boss_2_cool1 >= 召唤物限时 boss_2_cool1 run fill ~ ~ ~ ~ ~1 ~ air replace cobweb
execute as @e[type=minecraft:armor_stand,tag=boss_2_summon_2] if score @s boss_2_cool1 >= 召唤物限时 boss_2_cool1 run kill @s
