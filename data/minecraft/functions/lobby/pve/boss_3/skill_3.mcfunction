# 技能冷却
scoreboard players set 技能冷却 boss_3_cool3 600
scoreboard players add @e[tag=boss3] boss_3_cool3 1
execute as @e[tag=boss3] if score @s boss_3_cool3 >= 技能冷却 boss_3_cool3 run tag @s add boss_3_skill_3
execute as @e[tag=boss3,tag=boss_3_skill_3] at @s positioned ~ ~1.25 ~ run summon minecraft:drowned ^ ^ ^ {IsBaby:1b,HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"K_bai",Enchantments:[{id:"minecraft:protection",lvl:1}]}}],CustomName:"{\"text\":\"泰坦\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["monster","boss_3_summon_3"],Attributes:[{Base:5.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:5.0f,PersistenceRequired:1b,FallFlying:1b}
execute as @e[tag=boss3,tag=boss_3_skill_3] at @s positioned ~ ~1.25 ~ run summon minecraft:drowned ^ ^ ^ {IsBaby:1b,HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"K_bai",Enchantments:[{id:"minecraft:protection",lvl:1}]}}],CustomName:"{\"text\":\"泰坦\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["monster","boss_3_summon_3"],Attributes:[{Base:5.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:5.0f,PersistenceRequired:1b,FallFlying:1b}
execute as @e[tag=boss3,tag=boss_3_skill_3] run effect give @s instant_damage 1 2
execute as @e[tag=boss3] if score @s boss_3_cool3 >= 技能冷却 boss_3_cool3 run tag @s remove boss_3_skill_3
execute as @e[tag=boss3] if score @s boss_3_cool3 >= 技能冷却 boss_3_cool3 run scoreboard players set @s boss_3_cool3 0

scoreboard players set 召唤物限时 boss_3_cool3 600
scoreboard players add @e[tag=boss_3_summon_3,type=minecraft:drowned] boss_3_cool3 1
execute as @e[type=minecraft:drowned,tag=boss_3_summon_3] if score @s boss_3_cool3 >= 召唤物限时 boss_3_cool3 run kill @s

function minecraft:lobby/pve/boss_3/skill_1
function minecraft:lobby/pve/boss_3/skill_2