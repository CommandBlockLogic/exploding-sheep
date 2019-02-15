scoreboard players set 游戏状态 boss_4_system 1
scoreboard players set Boss技能 boss_4_system 1

kill @e[tag=particle_marker,type=minecraft:armor_stand]

# 召唤boss
summon minecraft:sheep 0 13 0 {Invulnerable:1b,Passengers:[{id:"minecraft:zombie",HandItems:[{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}],Damage:20}}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:3}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"K_bai",Enchantments:[{id:"minecraft:blast_protection",lvl:1}]}}],CustomName:"{\"text\":\"羊羊之神\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss_fight","boss_fight_exist","boss4"],Attributes:[{Base:100.0d,Name:"generic.maxHealth"},{Base:16.0d,Name:"generic.followRange"}],Health:100.0f,PersistenceRequired:1b,FallFlying:1b}],Tags:["boss_fight"]}

# 设置属性
execute store result entity @e[tag=boss4,limit=1] Attributes[0].Base double 0.01 run scoreboard players get boss血量 boss_4_system
execute store result entity @e[tag=boss4,limit=1] Health float 0.01 run scoreboard players get boss血量 boss_4_system
