execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2"]}

execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_1] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物1\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_1","boss_1_skill_2_power"]}
execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_2] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物2\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_2","boss_1_skill_2_power"]}
execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_3] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物3\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_3","boss_1_skill_2_power"]}
execute if entity @e[tag=boss1] unless entity @e[tag=boss_1_skill_2_4] as @e[tag=boss1] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物4\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_skill_2_4","boss_1_skill_2_power"]}

execute store result entity @e[tag=boss_1_skill_2,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss1,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_1_skill_2,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss1,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_1_skill_2,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss1,limit=1] Pos[2] 1000
execute as @e[tag=boss_1_skill_2] at @s run tp @s ~ ~ ~ ~2 ~
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s run tp @e[tag=boss_1_skill_2_1,limit=1,tag=!boss_1_skill_2_use] ^ ^ ^2
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s run tp @e[tag=boss_1_skill_2_2,limit=1,tag=!boss_1_skill_2_use] ^ ^ ^-2
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s run tp @e[tag=boss_1_skill_2_3,limit=1,tag=!boss_1_skill_2_use] ^2 ^ ^
execute if entity @e[tag=boss1] as @e[tag=boss_1_skill_2] at @s run tp @e[tag=boss_1_skill_2_4,limit=1,tag=!boss_1_skill_2_use] ^-2 ^ ^

execute as @e[tag=boss_1_skill_2_1] at @s run particle minecraft:happy_villager ~ ~ ~ .1 .1 .1 0.000001 5 force
execute as @e[tag=boss_1_skill_2_2] at @s run particle minecraft:flame ~ ~ ~ .1 .1 .1 0.00001 5 force
execute as @e[tag=boss_1_skill_2_3] at @s run particle minecraft:portal ~ ~ ~ .1 .1 .1 0.00001 10 force
execute as @e[tag=boss_1_skill_2_4] at @s run particle minecraft:squid_ink ~ ~ ~ .1 .1 .1 0.01 1 force

execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_1]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_2]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_3]
execute unless entity @e[tag=boss1] run kill @e[tag=boss_1_skill_2_4]

scoreboard players set 技能冷却 boss_1_cool2 200
scoreboard players add @e[tag=boss1] boss_1_cool2 1
execute as @e[tag=boss1] if score @s boss_1_cool2 >= 技能冷却 boss_1_cool2 run tag @e[tag=boss_1_skill_2_power,limit=1,sort=random] add boss_1_skill_2_use
execute as @e[tag=boss1] if score @s boss_1_cool2 >= 技能冷却 boss_1_cool2 run scoreboard players set @s boss_1_cool2 0
scoreboard players add @e[tag=boss_1_skill_2_use] boss_1_cool2 1
scoreboard players set 召唤物限时 boss_1_cool2 300
execute as @e[tag=boss_1_skill_2_use] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=boss_1_skill_2_use] at @s run tp @s ^ ^ ^0.2
execute as @e[tag=boss_1_skill_2_use] if score @s boss_1_cool2 >= 召唤物限时 boss_1_cool2 run kill @s

execute as @e[tag=boss_1_skill_2_1,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run effect give @a[distance=..1] poison 5 2
execute as @e[tag=boss_1_skill_2_1,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run kill @s
execute as @e[tag=boss_1_skill_2_2,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:2b,CustomName:"{\"text\":\"爆炸法术\",\"color\":\"red\"}"}
execute as @e[tag=boss_1_skill_2_2,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run kill @s
execute as @e[tag=boss_1_skill_2_3,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run effect give @a[distance=..1] levitation 1 6
execute as @e[tag=boss_1_skill_2_3,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run kill @s
execute as @e[tag=boss_1_skill_2_4,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run effect give @a[distance=..1] blindness 10 2
execute as @e[tag=boss_1_skill_2_4,tag=boss_1_skill_2_use] at @s if entity @a[distance=..1] run kill @s



