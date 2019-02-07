execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2"]}

execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_1] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物1\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_1","boss_1_skill_2_power"]}
execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_2] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物2\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_2","boss_1_skill_2_power"]}
execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_3] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物3\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_3","boss_1_skill_2_power"]}
execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_4] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物4\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_4","boss_1_skill_2_power"]}

execute store result entity @e[tag=boss_1_skill_2,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss1,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_1_skill_2,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss1,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_1_skill_2,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss1,limit=1] Pos[2] 1000
execute as @e[tag=boss_1_skill_2] at @s run tp @s ~ ~ ~ ~3 ~
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s positioned ~ ~1.25 ~ run tp @e[tag=boss_1_skill_2_1,limit=1,tag=!boss_1_skill_2_use] ^ ^ ^3
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s positioned ~ ~1.25 ~ run tp @e[tag=boss_1_skill_2_2,limit=1,tag=!boss_1_skill_2_use] ^ ^ ^-3
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s positioned ~ ~1.25 ~ run tp @e[tag=boss_1_skill_2_3,limit=1,tag=!boss_1_skill_2_use] ^3 ^ ^
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s positioned ~ ~1.25 ~ run tp @e[tag=boss_1_skill_2_4,limit=1,tag=!boss_1_skill_2_use] ^-3 ^ ^

execute as @e[tag=boss_1_skill_2_1] at @s run particle minecraft:dust 0 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 10 force
execute as @e[tag=boss_1_skill_2_2] at @s run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 10 force
execute as @e[tag=boss_1_skill_2_3] at @s run particle minecraft:dust 0 0.5 1 1 ~ ~ ~ .01 .01 .01 0.0001 10 force
execute as @e[tag=boss_1_skill_2_4] at @s run particle minecraft:dust 1 1 0 1 ~ ~ ~ .01 .01 .01 0.0001 10 force

execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_1]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_2]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_3]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_4]

scoreboard players set 技能冷却 boss_1_cool2 300
scoreboard players add @e[tag=boss1] boss_1_cool2 1
execute as @e[tag=boss1] at @s if entity @a[gamemode=adventure,distance=..16] if score @s boss_1_cool2 >= 技能冷却 boss_1_cool2 run tag @e[tag=boss_1_skill_2_power,limit=1,sort=random] add boss_1_skill_2_use
execute as @e[tag=boss1] if score @s boss_1_cool2 >= 技能冷却 boss_1_cool2 run scoreboard players set @s boss_1_cool2 0
scoreboard players add @e[tag=boss_1_skill_2_use] boss_1_cool2 1
scoreboard players set 召唤物限时 boss_1_cool2 100
execute as @e[tag=boss_1_skill_2_use,tag=!boss_1_skill_2_1] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=adventure] feet
execute as @e[tag=boss_1_skill_2_use,tag=boss_1_skill_2_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=boss1,type=skeleton,tag=monster,limit=1] feet
execute as @e[tag=boss_1_skill_2_use] at @s run tp @s ^ ^ ^0.25
execute as @e[tag=boss_1_skill_2_use] if score @s boss_1_cool2 >= 召唤物限时 boss_1_cool2 run kill @s


execute as @e[tag=boss_1_skill_2_1,tag=boss_1_skill_2_use] at @s if entity @e[tag=boss1,type=skeleton,tag=monster,distance=..1] run effect give @e[tag=boss1,type=skeleton,tag=monster,distance=..1] instant_damage 1 2
execute as @e[tag=boss_1_skill_2_1,tag=boss_1_skill_2_use] at @s if entity @e[tag=boss1,type=skeleton,tag=monster,distance=..1] run kill @s


execute as @e[tag=boss_1_skill_2_2,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1b,CustomName:"{\"text\":\"爆炸法术\",\"color\":\"red\"}"}
execute as @e[tag=boss_1_skill_2_2,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run kill @s


execute as @e[tag=boss_1_skill_2_3,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run effect give @a[gamemode=adventure,distance=..1] levitation 1 4
execute as @e[tag=boss_1_skill_2_3,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run kill @s


execute as @e[tag=boss_1_skill_2_4,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run effect give @a[gamemode=adventure,distance=..1] blindness 3 2
execute as @e[tag=boss_1_skill_2_4,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run effect give @a[gamemode=adventure,distance=..1] weakness 3 2
execute as @e[tag=boss_1_skill_2_4,tag=boss_1_skill_2_use] at @s if entity @a[gamemode=adventure,distance=..1] run kill @s



