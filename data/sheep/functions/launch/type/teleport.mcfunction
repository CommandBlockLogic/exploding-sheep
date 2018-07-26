# sheep:launch/type/teleport

summon minecraft:sheep ^ ^ ^ {Tags:["sheep_sheep","sheep_type_teleport","sheep_attr_no_damage","sheep_new"],Color:15,Silent:1,Age:-999999,Invulnerable:1,NoAI:1}
tp @e[tag=sheep_mark,limit=1] ^ ^ ^1.1
scoreboard players set @e[tag=sheep_new] s_sheep_type 2
