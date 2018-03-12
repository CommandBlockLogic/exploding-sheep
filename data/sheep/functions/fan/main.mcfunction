# sheep:fan/main

# consume energy
scoreboard players remove @s s_energy 40

# sound
playsound minecraft:entity.player.attack.sweep player @a ^ ^ ^0.5 1 0.5

# tag the player
tag @s add sheep_fanning

# tag sheeps which will be fanned and player
execute positioned ^ ^ ^4.33 run tag @e[tag=sheep_sheep,tag=!sheep_fanned,distance=..4.33] add sheep_fanned
execute positioned ^ ^ ^4.33 as @a[distance=..4.33,tag=!sheep_fanning] at @s anchored eyes run function sheep:fan/player

# save wind direction
# summon marker
summon minecraft:area_effect_cloud ^ ^ ^-1 {Tags:["sheep_mark","sheep_wind"],Duration:9}
summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["sheep_mark2"],Duration:9}
# save motion
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp2 run data get entity @s Pos[0] 1000
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp3 run data get entity @s Pos[1] 1000
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp4 run data get entity @s Pos[2] 1000
execute store result score @s s_temp2 run data get entity @e[tag=sheep_mark2,limit=1] Pos[0] 1000
execute store result score @s s_temp3 run data get entity @e[tag=sheep_mark2,limit=1] Pos[1] 1000
execute store result score @s s_temp4 run data get entity @e[tag=sheep_mark2,limit=1] Pos[2] 1000
scoreboard players operation @s s_temp2 -= @e[tag=sheep_mark,limit=1] s_temp2
scoreboard players operation @s s_temp3 -= @e[tag=sheep_mark,limit=1] s_temp3
scoreboard players operation @s s_temp4 -= @e[tag=sheep_mark,limit=1] s_temp4
# rotate wind
tp @e[tag=sheep_mark] ^ ^ ^ ~ ~

# clear marker
tag @e[tag=sheep_mark] remove sheep_mark
kill @e[tag=sheep_mark2]

# change sheeps' motion
execute as @e[tag=sheep_fanned] at @s run function sheep:fan/turn

# clear tag
tag @e[tag=sheep_fanned] remove sheep_fanned
tag @s remove sheep_fanning