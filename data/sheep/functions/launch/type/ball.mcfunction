# sheep:launch/type/ball

summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_ball","sheep_new","sheep_attr_no_damage"],Color:9,NoGravity:1,Silent:1,Age:-999999,Invulnerable:1}
tp @e[tag=sheep_mark,limit=1] ^ ^ ^0.7
scoreboard players set @e[tag=sheep_new] s_sheep_type 7