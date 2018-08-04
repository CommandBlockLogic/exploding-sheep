# 随机选择boss
summon minecraft:armor_stand -165 8 -105 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["S_B_1","S_T"]}
summon minecraft:armor_stand -165 8 -105 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["S_B_2","S_T"]}
summon minecraft:armor_stand -165 8 -105 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["S_B_3","S_T"]}
execute as @e[tag=S_T,type=armor_stand,limit=1,sort=random] run tag @s add selected_boss

# 召唤boss
execute if entity @e[tag=S_B_1,type=armor_stand,tag=selected_boss] run summon minecraft:skeleton -113 14 -101 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}},{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:wither_skull",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"法师\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss1","monster","boss_exist","boss_tp_target1"],Attributes:[{Base:100.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:100.0f,PersistenceRequired:1b,FallFlying:1b}
execute if entity @e[tag=S_B_2,type=armor_stand,tag=selected_boss] run summon minecraft:evoker -143 7 -42 {HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"HerobrineXia",Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"召唤师\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss2","monster","boss_exist","boss_tp_target2","system_fan_mark","real_boss2"],Attributes:[{Base:100.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:100.0f,PersistenceRequired:1b,FallFlying:1b}
execute if entity @e[tag=S_B_3,type=armor_stand,tag=selected_boss] run summon minecraft:zombie -177 6 -61 {HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:diamond_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"泰坦\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss3","monster","boss_exist","boss_tp_target3"],Attributes:[{Base:100.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:100.0f,PersistenceRequired:1b,FallFlying:1b}

# 改分数
execute if entity @e[tag=S_B_1,type=armor_stand,tag=selected_boss] run scoreboard players set Boss编号 pve_system 1
execute if entity @e[tag=S_B_2,type=armor_stand,tag=selected_boss] run scoreboard players set Boss编号 pve_system 2
execute if entity @e[tag=S_B_3,type=armor_stand,tag=selected_boss] run scoreboard players set Boss编号 pve_system 3

# 告知玩家
execute if entity @e[tag=S_B_1,type=armor_stand,tag=selected_boss] run tellraw @a [{"text":">> ","color":"white"},{"selector":"@e[tag=boss1]"},{"text":"已复活！"}]
execute if entity @e[tag=S_B_2,type=armor_stand,tag=selected_boss] run tellraw @a [{"text":">> ","color":"white"},{"selector":"@e[tag=boss2]"},{"text":"已复活！"}]
execute if entity @e[tag=S_B_3,type=armor_stand,tag=selected_boss] run tellraw @a [{"text":">> ","color":"white"},{"selector":"@e[tag=boss3]"},{"text":"已复活！"}]

# 删除AS
kill @e[tag=S_T,type=armor_stand]