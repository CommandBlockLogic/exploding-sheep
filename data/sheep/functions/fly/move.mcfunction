# sheep:fly/move

# move
# x
execute store result score @s s_temp5 run data get entity @s Pos[0] 1000
scoreboard players operation @s s_temp5 += @s s_temp2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s s_temp5
execute at @s[tag=!sheep_touch_x] positioned ~0.3 ~0.4 ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~0.3 ~ ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~0.3 ~0.4 ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~0.3 ~ ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~-0.3 ~0.4 ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~-0.3 ~ ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~-0.3 ~0.4 ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
execute at @s[tag=!sheep_touch_x] positioned ~-0.3 ~ ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_x
# y
execute store result score @s s_temp5 run data get entity @s Pos[1] 1000
scoreboard players operation @s s_temp5 += @s s_temp3
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s s_temp5
execute at @s[tag=!sheep_touch_y] positioned ~0.3 ~0.4 ~0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~0.3 ~ ~0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~0.3 ~0.4 ~-0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~0.3 ~ ~-0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~-0.3 ~0.4 ~0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~-0.3 ~ ~0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~-0.3 ~0.4 ~-0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~-0.3 ~ ~-0.3 unless block ~ ~ ~ #sheep:chuantou_with_slabs run function sheep:fly/touch_y

execute at @s[tag=!sheep_touch_y] positioned ~0.3 ~ ~0.3 if block ~ ~0.45 ~ #minecraft:slabs[type=bottom] run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~0.3 ~ ~-0.3 if block ~ ~0.45 ~ #minecraft:slabs[type=bottom] run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~-0.3 ~ ~0.3 if block ~ ~0.45 ~ #minecraft:slabs[type=bottom] run function sheep:fly/touch_y
execute at @s[tag=!sheep_touch_y] positioned ~-0.3 ~ ~-0.3 if block ~ ~0.45 ~ #minecraft:slabs[type=bottom] run function sheep:fly/touch_y

# z
execute store result score @s s_temp5 run data get entity @s Pos[2] 1000
scoreboard players operation @s s_temp5 += @s s_temp4
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s s_temp5
execute at @s[tag=!sheep_touch_z] positioned ~0.3 ~0.4 ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~0.3 ~ ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~0.3 ~0.4 ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~0.3 ~ ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~-0.3 ~0.4 ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~-0.3 ~ ~0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~-0.3 ~0.4 ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z
execute at @s[tag=!sheep_touch_z] positioned ~-0.3 ~ ~-0.3 unless block ~ ~ ~ #sheep:chuantou run function sheep:fly/touch_z

# set blow
scoreboard players set @s[tag=sheep_touch_x,scores={s_blow_time=0}] s_blow_time 1
scoreboard players set @s[tag=sheep_touch_y,scores={s_blow_time=0}] s_blow_time 1
scoreboard players set @s[tag=sheep_touch_z,scores={s_blow_time=0}] s_blow_time 1

# clear
tag @s[tag=sheep_touch_x] remove sheep_touch_x
tag @s[tag=sheep_touch_y] remove sheep_touch_y
tag @s[tag=sheep_touch_z] remove sheep_touch_z