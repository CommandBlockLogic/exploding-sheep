summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3","boss4_skill4_sheep1"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1}

summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3","boss4_skill4_sheep2"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1}

summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3","boss4_skill4_sheep3"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1}

tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"粉色羊羊","color":"yellow"},{"text":"，快走过去拆除他们！","color":"white"},{"text":"黄色羊羊","color":"yellow"}]

execute at @e[tag=boss4] run spreadplayers ~ ~ 10 25 false @e[tag=boss4_sheep_new3,type=sheep]

scoreboard players set 大招冷却时间 boss_4_cool 0
