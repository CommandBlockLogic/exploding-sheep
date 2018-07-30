# get_score/sanddick

# generate random num between 0-255
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_temp","sheep_random1"],Duration:999}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_temp","sheep_random2"],Duration:999}
scoreboard players set @e[tag=sheep_random1] s_temp1 0
scoreboard players set @e[tag=sheep_random2] s_temp1 1
scoreboard players set @s s_temp2 2

scoreboard players set @s s_temp6 0
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_random2,limit=1] s_temp1 *= @s s_temp2
scoreboard players operation @s s_temp6 += @e[tag=sheep_temp,sort=random,limit=1] s_temp1

scoreboard players set @s s_temp2 1000000
scoreboard players operation @s s_temp6 *= @s s_temp2
scoreboard players set @s s_temp2 255
scoreboard players operation @s s_temp6 /= @s s_temp2

scoreboard players set @s s_temp7 1000000
scoreboard players operation @s s_temp7 -= @s s_temp6
function lobby/launch_sheep/sqrt

scoreboard players set @s s_temp1 1000
scoreboard players operation @s s_temp1 -= @s s_temp7

scoreboard players set @s s_temp2 10
scoreboard players operation @s s_temp1 *= @s s_temp2

summon minecraft:falling_block 0 30 0 {Tags:["sheep_block","sheep_block_temp"],Time:1}
execute store result entity @e[tag=sheep_block_temp,limit=1] Pos[0] double 0.001 run scoreboard players get @s s_temp1
tag @e[tag=sheep_block_temp] remove sheep_block_temp
kill @e[tag=sheep_temp]