execute if entity @e[tag=boss2] unless entity @e[tag=boss_2_skill_3] as @e[tag=boss2] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:"{\"text\":\"技能三召唤物\"}",Marker:1b,Invisible:1b,NoGravity:1b,Tags:["boss_2_skill_3"]}

execute store result entity @e[tag=boss_2_skill_3,limit=1] Pos[0] double 0.001 run data get entity @e[tag=boss2,limit=1] Pos[0] 1000
execute store result entity @e[tag=boss_2_skill_3,limit=1] Pos[1] double 0.001 run data get entity @e[tag=boss2,limit=1] Pos[1] 1000
execute store result entity @e[tag=boss_2_skill_3,limit=1] Pos[2] double 0.001 run data get entity @e[tag=boss2,limit=1] Pos[2] 1000
execute as @e[tag=boss_2_skill_3] at @s run tp @s ~ ~ ~ ~1 ~

execute unless entity @e[tag=boss2,tag=real_boss2] run kill @e[tag=fake_boss2]

scoreboard players set 技能冷却 boss_2_cool3 900
scoreboard players add @e[tag=boss2,tag=real_boss2] boss_2_cool3 1
execute as @e[tag=boss2] at @s if entity @a[distance=..16] if score @s boss_2_cool3 >= 技能冷却 boss_2_cool3 run tag @e[tag=boss_2_skill_3] add boss_2_skill_3_use
execute as @e[tag=boss2] if score @s boss_2_cool3 >= 技能冷却 boss_2_cool3 run scoreboard players set @s boss_2_cool3 0

execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s positioned ~ ~ ~ run summon minecraft:evoker ^ ^ ^3 {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"召唤师\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss2","monster","boss_exist","boss_tp_target2","system_fan_mark","fake_boss2"],Attributes:[{Base:16.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:16.0f,PersistenceRequired:1b,FallFlying:1b}
execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s positioned ~ ~ ~ run summon minecraft:evoker ^ ^ ^-3 {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"召唤师\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss2","monster","boss_exist","boss_tp_target2","system_fan_mark","fake_boss2"],Attributes:[{Base:16.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:16.0f,PersistenceRequired:1b,FallFlying:1b}
execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] run effect give @e[tag=boss2,tag=real_boss2] regeneration 30 2 true
execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] run tag @e[tag=boss2,tag=real_boss2] add boss_2_skill_3_tag
execute as @e[tag=boss_2_skill_3,tag=boss_2_skill_3_use] at @s run tellraw @a[distance=..16] [{"text":">> ","color":"white"},{"selector":"@e[tag=boss2,tag=real_boss2]"},{"text":"进入了无敌状态，并且正在偷偷回血！\n>> 快击杀他的分身来阻止他！","color":"white"}]
tag @e[tag=boss_2_skill_3] remove boss_2_skill_3_use

#
execute if entity @e[type=evoker,tag=fake_boss2] run effect give @e[tag=boss2,tag=real_boss2] invisibility 1 0 true
execute if entity @e[type=evoker,tag=fake_boss2] run data merge entity @e[tag=boss2,tag=real_boss2,limit=1] {Invulnerable:1b}

execute unless entity @e[type=evoker,tag=fake_boss2] run effect clear @e[tag=boss2,tag=real_boss2] regeneration
execute unless entity @e[type=evoker,tag=fake_boss2] run data merge entity @e[tag=boss2,tag=real_boss2,limit=1] {Invulnerable:0b}
execute unless entity @e[type=evoker,tag=fake_boss2] as @e[tag=boss2,tag=real_boss2,tag=boss_2_skill_3_tag] at @s run tellraw @a[distance=..16] [{"text":">> ","color":"white"},{"selector":"@e[tag=boss2,tag=real_boss2]"},{"text":"的无敌状态被击破了！","color":"white"}]
execute unless entity @e[type=evoker,tag=fake_boss2] run tag @e[tag=boss2,tag=real_boss2,limit=1] remove boss_2_skill_3_tag



scoreboard players set 召唤物限时 boss_2_cool3 600
scoreboard players add @e[tag=fake_boss2,type=minecraft:evoker] boss_2_cool3 1
execute as @e[type=minecraft:evoker,tag=fake_boss2] if score @s boss_2_cool3 >= 召唤物限时 boss_2_cool3 run kill @s


