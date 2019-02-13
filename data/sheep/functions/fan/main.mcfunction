# sheep:fan/main

# sound
playsound minecraft:entity.player.attack.sweep player @a ^ ^ ^0.5 1 0.5

# item
function sheep:item/fan

# tag the player
tag @s add sheep_fanning

# tag sheeps which will be fanned and player
execute at @s positioned ~ ~1 ~ positioned ^ ^ ^3.5 run tag @e[tag=sheep_sheep,tag=!sheep_fanned,distance=..4.5] add sheep_fanned
execute at @s positioned ~ ~1 ~ positioned ^ ^ ^3.5 as @a[distance=..4.5,tag=!sheep_fanning] at @s anchored eyes run function sheep:fan/player
execute at @s positioned ~ ~1 ~ positioned ^ ^ ^3.5 run tag @e[tag=monster,distance=..4.5] add sheep_fanned_monster

# advancement
execute if entity @e[tag=sheep_fanned] run advancement grant @s[advancements={sheep:fan/sheep=false}] only sheep:fan/sheep


# save wind direction
# summon marker
summon minecraft:area_effect_cloud ^ ^ ^-1.1 {Tags:["sheep_mark","sheep_wind"],Duration:9}
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
scoreboard players add @e[tag=sheep_fanned] s_no_fan_time 0
execute as @e[tag=sheep_fanned,tag=!sheep_type_football] at @s run function sheep:fan/turn
execute as @e[tag=sheep_fanned,tag=sheep_type_football,scores={s_no_fan_time=0}] at @s run function sheep:fan/turn
execute as @e[tag=sheep_fanned_monster] at @s run function sheep:fan/monster

# set sheep no speed decay time
scoreboard players set @e[tag=sheep_fanned] s_no_decay_time 4
scoreboard players set @e[tag=sheep_fanned,tag=sheep_type_football] s_no_fan_time 10

# clear tag
tag @e[tag=sheep_fanned] remove sheep_fanned
tag @e[tag=sheep_fanned_monster] remove sheep_fanned_monster
tag @s remove sheep_fanning