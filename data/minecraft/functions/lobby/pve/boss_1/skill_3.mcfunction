scoreboard players set 技能冷却 boss_1_cool3 600
scoreboard players add @e[tag=boss1] boss_1_cool3 1
execute as @e[tag=boss1] if score @s boss_1_cool3 >= 技能冷却 boss_1_cool3 run tag @s add boss_1_skill_3
scoreboard players set @e[tag=boss1,tag=boss_1_skill_3] boss_1_cool3 0
execute as @e[tag=boss1,tag=boss_1_skill_3] at @s run tag @p[distance=..25] add boss_1_skill_3_target
execute as @e[tag=boss1,tag=boss_1_skill_3] at @s run tellraw @p[distance=..25] [{"text":">> ","color":"white"},{"text":"你被","color":"white"},{"selector":"@e[tag=boss1]"},{"text":"锁定了，快跑！","color":"white"}]
execute if entity @e[tag=boss1,tag=boss_1_skill_3] unless entity @e[tag=boss_1_summon_3] as @a[tag=boss_1_skill_3_target] at @s run summon minecraft:armor_stand ^ ^ ^-0.5 {CustomName:"{\"text\":\"技能三召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_1_summon_3"]}
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s run tp @s ~ ~ ~ facing entity @e[tag=boss_1_summon_3,limit=1]
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s run tp @s ^ ^ ^0.25
execute if entity @a[tag=boss_1_skill_3_target] if entity @e[tag=boss_1_summon_3] as @a[tag=boss_1_skill_3_target] at @s run tp @e[tag=boss_1_summon_3] ^ ^ ^-0.5
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s if entity @e[tag=boss_1_summon_3,distance=..1] run tp @s ~ ~ ~ ~180 ~
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s if entity @e[tag=boss_1_summon_3,distance=..1] run playsound minecraft:block.anvil.place ambient @a[tag=boss_1_skill_3_target] ~ ~ ~ 1 0
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s if entity @e[tag=boss_1_summon_3,distance=..1] run effect give @a[tag=boss_1_skill_3_target] wither 5 3
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s if entity @e[tag=boss_1_summon_3,distance=..1] run tellraw @a[tag=boss_1_skill_3_target] [{"text":">> ","color":"white"},{"text":"你被","color":"white"},{"selector":"@e[tag=boss1]"},{"text":"诅咒了！","color":"white"}]
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s if entity @e[tag=boss_1_summon_3,distance=..1] run tag @a[tag=boss_1_skill_3_target] remove boss_1_skill_3_target
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s if entity @e[tag=boss_1_summon_3,distance=..1] run tp @s ~ ~2 ~
execute if entity @e[tag=boss1] if entity @e[tag=boss_1_summon_3] as @e[tag=boss1] at @s positioned ~ ~-2 ~ if entity @e[tag=boss_1_summon_3,distance=..1] run kill @e[tag=boss_1_summon_3]
execute if entity @e[tag=boss1,tag=boss_1_skill_3] as @e[tag=boss1] run tag @s remove boss_1_skill_3

scoreboard players set 召唤物限时 boss_1_cool3 300
scoreboard players add @e[tag=boss_1_summon_3] boss_1_cool3 1
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_3] if score @s boss_1_cool3 >= 召唤物限时 boss_1_cool3 run tellraw @a[tag=boss_1_skill_3_target] [{"text":">> ","color":"white"},{"selector":"@e[tag=boss1]"},{"text":"放过了你！","color":"white"}]
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_3] if score @s boss_1_cool3 >= 召唤物限时 boss_1_cool3 run tag @a[tag=boss_1_skill_3_target] remove boss_1_skill_3_target
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_3] if score @s boss_1_cool3 >= 召唤物限时 boss_1_cool3 run tag @e[tag=boss1] remove boss_1_skill_3
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_3] if score @s boss_1_cool3 >= 召唤物限时 boss_1_cool3 run kill @s

