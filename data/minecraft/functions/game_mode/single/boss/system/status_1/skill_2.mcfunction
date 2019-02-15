summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new2","boss4_skill2_sheep1"],Color:14,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}
summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new2","boss4_skill2_sheep2"],Color:14,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}
summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new2","boss4_skill2_sheep3"],Color:14,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}
summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new2","boss4_skill2_sheep4"],Color:14,NoGravity:1,Silent:1,Age:-999999,Invulnerable:0,NoAI:1}

scoreboard players set Boss技能 boss_4_system 1
tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"红色羊羊","color":"red"},{"text":"，快在他发射前击杀","color":"white"},{"text":"红色羊羊","color":"red"}]

scoreboard players set 冷却时间 boss_4_cool 0
