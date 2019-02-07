execute if entity @e[tag=boss2,tag=real_boss2] unless entity @e[tag=boss_2_skill_2] unless entity @e[tag=boss2,tag=fake_boss2] as @e[tag=boss2,tag=real_boss2] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能二召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_2_skill_2"]}

execute store result entity @e[tag=boss_2_skill_2,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss2,tag=real_boss2,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_2_skill_2,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss2,tag=real_boss2,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_2_skill_2,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss2,tag=real_boss2,limit=1] Pos[2] 1000
execute as @e[tag=boss_2_skill_2] at @s run tp @s ~ ~ ~ ~1 ~

execute unless entity @e[tag=boss2,tag=real_boss2] run kill @e[tag=boss_2_skill_2]
execute if entity @e[tag=boss2,tag=fake_boss2] run kill @e[tag=boss_2_skill_2]


scoreboard players set 技能冷却 boss_2_cool2 20
scoreboard players add @e[tag=boss2,tag=real_boss2] boss_2_cool2 1
execute as @e[tag=boss2,tag=real_boss2] at @s if entity @a[gamemode=adventure,distance=..16] if score @s boss_2_cool2 >= 技能冷却 boss_2_cool2 run tag @e[tag=boss_2_skill_2] add boss_2_skill_2_use
execute as @e[tag=boss2,tag=real_boss2] if score @s boss_2_cool2 >= 技能冷却 boss_2_cool2 run scoreboard players set @s boss_2_cool2 0

execute as @e[tag=boss_2_skill_2,tag=boss_2_skill_2_use] at @s positioned ~ ~1.25 ~ run particle minecraft:dust 0 1 0 1 ^ ^ ^2 .01 1 .01 0.0001 10 force
execute as @e[tag=boss_2_skill_2,tag=boss_2_skill_2_use] at @s positioned ~ ~1.25 ~ run particle minecraft:dust 0 1 0 1 ^ ^ ^-2 .01 1 .01 0.0001 10 force

execute as @e[tag=boss_2_skill_2,tag=boss_2_skill_2_use] at @s positioned ~ ~ ~ run summon minecraft:evoker_fangs ^ ^ ^2 {Warmup:10}
execute as @e[tag=boss_2_skill_2,tag=boss_2_skill_2_use] at @s positioned ~ ~ ~ run summon minecraft:evoker_fangs ^ ^ ^-2 {Warmup:10}
tag @e[tag=boss_2_skill_2] remove boss_2_skill_2_use

