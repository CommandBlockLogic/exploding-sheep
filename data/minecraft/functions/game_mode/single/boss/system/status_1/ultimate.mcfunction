summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1,CustomNameVisible:1b,CustomName:"{\"text\":\"炮塔羊羊\",\"color\":\"light_purple\"}"}
scoreboard players add @e[tag=boss4_sheep_new3,type=sheep] boss_4_system 25
summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1}
scoreboard players add @e[tag=boss4_sheep_new3,type=sheep] boss_4_system 25
summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1}
scoreboard players add @e[tag=boss4_sheep_new3,type=sheep] boss_4_system 25
summon minecraft:sheep ^ ^ ^ {Tags:["boss4_sheep_new3"],Color:6,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1s,NoAI:1}


tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"粉色羊羊","color":"light_purple"},{"text":"，快走过去拆除他们！","color":"white"}]

execute at @e[tag=boss4] run spreadplayers ~ ~ 5 10 false @e[tag=boss4_sheep_new3,type=sheep]

scoreboard players set 大招冷却时间 boss_4_cool 0
