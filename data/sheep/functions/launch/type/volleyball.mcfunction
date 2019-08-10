# sheep:launch/type/volleyball

setblock 0 1 0 minecraft:air replace
setblock 0 1 0 minecraft:oak_sign{Text1:"[\"\",{\"selector\":\"@a[tag=player_temp]\"},\"的排球\"]"} replace
summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_volleyball","sheep_new","sheep_attr_no_damage","sheep_attr_slow_falling"],CustomNameVisible:1,Color:9,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1}
data modify entity @e[tag=sheep_new,limit=1] CustomName set from block 0 1 0 Text1

tp @e[tag=sheep_mark,limit=1] ^ ^ ^0.35
scoreboard players set @e[tag=sheep_new] s_sheep_type 1001