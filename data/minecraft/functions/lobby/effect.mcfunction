# lobby/effect

# resistance
execute positioned -181 1 -132 run effect give @a[dx=27,dy=250,dz=25] minecraft:resistance 3 5 true
execute positioned -181 1 -132 as @a[dx=27,dy=250,dz=25,scores={health=..19}] run effect give @s minecraft:instant_health 1 10
