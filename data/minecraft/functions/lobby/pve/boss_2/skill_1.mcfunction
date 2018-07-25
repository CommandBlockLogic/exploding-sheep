# 技能冷却
scoreboard players set 技能冷却 boss_1_cool1 100
scoreboard players add @e[tag=boss1] boss_1_cool1 1
execute as @e[tag=boss1] if score @s boss_1_cool1 >= 技能冷却 boss_1_cool1 run tag @s add boss_1_skill_1
execute as @e[tag=boss1,tag=boss_1_skill_1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=boss1,tag=boss_1_skill_1] at @s run summon minecraft:armor_stand ^ ^ ^2 {CustomName:"{\"text\":\"技能一召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_summon_1"]}
execute if entity @e[tag=boss1,tag=boss_1_skill_1] as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s run tp @s ^ ^ ^1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s run summon minecraft:evoker_fangs ~ ~ ~
tag @e[tag=boss1] remove boss_1_skill_1
execute as @e[tag=boss1] if score @s boss_1_cool1 >= 技能冷却 boss_1_cool1 run scoreboard players set @s boss_1_cool1 0

scoreboard players set 召唤物限时 boss_1_cool1 20
scoreboard players add @e[tag=boss_1_summon_1,type=minecraft:armor_stand] boss_1_cool1 1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] if score @s boss_1_cool1 >= 召唤物限时 boss_1_cool1 run kill @s