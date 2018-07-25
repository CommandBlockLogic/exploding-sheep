<<<<<<< HEAD
scoreboard players set 技能冷却 boss_1_cool1 200
scoreboard players add @e[tag=boss1] boss_1_cool1 1
execute as @e[tag=boss1] at @s if entity @a[distance=..16] if score @s boss_1_cool1 >= 技能冷却 boss_1_cool1 run tag @s add boss_1_skill_1
=======
# 技能冷却
scoreboard players set 技能冷却 boss_1_cool1 200
scoreboard players add @e[tag=boss1] boss_1_cool1 1
execute as @e[tag=boss1] if score @s boss_1_cool1 >= 技能冷却 boss_1_cool1 run tag @s add boss_1_skill_1
>>>>>>> 30127f8064995bf2df5ddc9a2efe9ac2d58ef0be
execute as @e[tag=boss1,tag=boss_1_skill_1] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=boss1,tag=boss_1_skill_1] at @s positioned ~ ~1.25 ~ run summon minecraft:armor_stand ^ ^ ^2 {CustomName:"{\"text\":\"技能一召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_summon_1"]}
execute if entity @e[tag=boss1,tag=boss_1_skill_1] as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s run tp @s ~ ~ ~ facing entity @p feet
execute if entity @e[tag=boss1,tag=boss_1_skill_1] run tag @e[tag=boss1,tag=boss_1_skill_1] remove boss_1_skill_1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s run tp @s ^ ^ ^1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s run particle minecraft:dust 1 1 1 2 ~ ~ ~ .01 .01 .01 0.0001 10 force
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s if entity @a[distance=..0.5] as @a[distance=..0.5] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能一召唤物2\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_summon_2"]}
execute as @e[tag=boss_1_summon_2] at @s run fill ~ ~ ~ ~ ~1 ~ cobweb replace air
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] at @s if entity @a[distance=..0.5] run kill @s
execute as @e[tag=boss1] if score @s boss_1_cool1 >= 技能冷却 boss_1_cool1 run scoreboard players set @s boss_1_cool1 0

<<<<<<< HEAD
kill @e[type=arrow,nbt={inGround:1b}]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_summon_1]
execute unless entity @e[tag=boss1] as @e[tag=boss_1_summon_2] at @s run fill ~ ~ ~ ~ ~1 ~ air replace cobweb
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_summon_2]


scoreboard players set 召唤物限时 boss_1_cool1 30
=======
kill @e[type=arrow,tag=kill_arrow,nbt={inGround:1b}]

scoreboard players set 召唤物限时 boss_1_cool1 60
>>>>>>> 30127f8064995bf2df5ddc9a2efe9ac2d58ef0be
scoreboard players add @e[tag=boss_1_summon_1,type=minecraft:armor_stand] boss_1_cool1 1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_1] if score @s boss_1_cool1 >= 召唤物限时 boss_1_cool1 run kill @s
scoreboard players add @e[tag=boss_1_summon_2,type=minecraft:armor_stand] boss_1_cool1 1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_2] at @s if score @s boss_1_cool1 >= 召唤物限时 boss_1_cool1 run fill ~ ~ ~ ~ ~1 ~ air replace cobweb
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_2] if score @s boss_1_cool1 >= 召唤物限时 boss_1_cool1 run kill @s
