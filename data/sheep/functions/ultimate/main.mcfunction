# sheep:ultimate/main

# energy and time
scoreboard players set @s s_ulti_time 1
scoreboard players set @s s_ulti_energy 0

# summon sheep
execute at @s run summon minecraft:sheep ^ ^0.5 ^1.5 {Tags:["sheep_ulti","sheep_new"],Color:0,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}

# add score
execute store result score @e[tag=sheep_new,limit=1] s_thrower_id run scoreboard players get @s s_id
scoreboard players set @e[tag=sheep_new,limit=1] s_ulti_sheep 1

# remove mark
tag @e[tag=sheep_new] remove sheep_new

# hint
tellraw @s [{"text":"## ","color":"gray","italic":true},"你的终极羊羊正在准备..."]

# heal
effect give @s minecraft:instant_health 1 100

# advancement
tellraw @s[advancements={sheep:ultimate/root=false}] ["§7§o##   你第一次发动了超级羊羊! 你的生命值完全恢复了.\n§7§o##   或许你已经发现, 用羊羊造成伤害就能够给超级羊羊充能."]
advancement grant @s[advancements={sheep:ultimate/root=false}] only sheep:ultimate/root
