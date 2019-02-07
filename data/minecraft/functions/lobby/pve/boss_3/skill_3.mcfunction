# 技能冷却
execute if entity @e[tag=boss3] unless entity @e[tag=boss_3_skill_3] as @e[tag=boss3] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能三召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_3_skill_3"]}
execute store result entity @e[tag=boss_3_skill_3,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss3,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_3_skill_3,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss3,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_3_skill_3,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss3,limit=1] Pos[2] 1000
execute as @e[tag=boss_3_skill_3] at @s run tp @s ~ ~ ~ ~1 ~

scoreboard players set 技能冷却 boss_3_cool3 600
scoreboard players add @e[tag=boss3] boss_3_cool3 1
execute as @e[tag=boss3] if score @s boss_3_cool3 >= 技能冷却 boss_3_cool3 run tag @s add boss_3_skill_3
execute as @e[tag=boss3] at @s positioned ~ ~1.25 ~ run effect give @e[tag=monster,distance=..1.5] resistance 3 1 true
execute as @e[tag=boss3] at @s positioned ~ ~1.25 ~ run effect give @a[gamemode=adventure,distance=..1.5] wither 3 1 true

execute as @e[tag=boss_3_skill_3] at @s positioned ^ ^0.25 ^1.5 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^-0.75 ^0.25 ^1.3 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^-1.3 ^0.25 ^0.75 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^1.5 ^0.25 ^ run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^1.3 ^0.25 ^0.75 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^0.75 ^0.25 ^1.3 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^ ^0.25 ^-1.5 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^0.75 ^0.25 ^-1.3 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^1.3 ^0.25 ^-0.75 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^-1.5 ^0.25 ^ run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^-1.3 ^0.25 ^-0.75 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force
execute as @e[tag=boss_3_skill_3] at @s positioned ^-0.75 ^0.25 ^-1.3 run particle minecraft:dust 1 0 0 1 ~ ~ ~ .01 .01 .01 0.0001 1 force


execute as @e[tag=boss3,tag=boss_3_skill_3] run effect give @s instant_damage 1 0
execute as @e[tag=boss3] if score @s boss_3_cool3 >= 技能冷却 boss_3_cool3 run tag @s remove boss_3_skill_3
execute as @e[tag=boss3] if score @s boss_3_cool3 >= 技能冷却 boss_3_cool3 run scoreboard players set @s boss_3_cool3 0

scoreboard players set 召唤物限时 boss_3_cool3 400
scoreboard players add @e[tag=boss_3_summon_3,type=minecraft:drowned] boss_3_cool3 1
execute as @e[type=minecraft:drowned,tag=boss_3_summon_3] if score @s boss_3_cool3 >= 召唤物限时 boss_3_cool3 run kill @s

function minecraft:lobby/pve/boss_3/skill_1
function minecraft:lobby/pve/boss_3/skill_2