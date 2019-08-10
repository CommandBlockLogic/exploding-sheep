# sheep:launch/type/football

setblock 0 1 0 minecraft:air replace
setblock 0 1 0 minecraft:oak_sign{Text1:"[\"\",{\"selector\":\"@a[tag=player_temp]\"},\"的足球\"]"} replace
summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_football","sheep_attr_no_explode","sheep_attr_no_damage","sheep_new"],Color:7,CustomNameVisible:1,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}
data modify entity @e[tag=sheep_new,limit=1] CustomName set from block 0 1 0 Text1

scoreboard players set @e[tag=sheep_new] s_sheep_type 1002
