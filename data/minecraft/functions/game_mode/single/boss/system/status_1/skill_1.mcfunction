summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new1","boss4_skill1_sheep1","boss_normal"],Color:4,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}

scoreboard players add @e[type=sheep,tag=boss4_sheep_new1] boss_4_cool 20

summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new1","boss4_skill1_sheep2","boss_normal"],Color:4,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}

scoreboard players add @e[type=sheep,tag=boss4_sheep_new1] boss_4_cool 20

summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new1","boss4_skill1_sheep3","boss_normal"],Color:4,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}

scoreboard players set Boss技能 boss_4_system 2

tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"黄色羊羊","color":"yellow"},{"text":"，快在他发射前击杀","color":"white"},{"text":"黄色羊羊","color":"yellow"}]

scoreboard players set 冷却时间 boss_4_cool 0
