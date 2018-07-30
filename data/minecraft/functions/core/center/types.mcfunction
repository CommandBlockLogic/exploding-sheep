# core/center/types

scoreboard players add @s tower_status 0
execute if score @s tower_status matches 0 run scoreboard players set @s tower_status 1
execute if score @s tower_status matches 1 run setblock ~ ~-0.5 ~ minecraft:purple_concrete_powder
execute if score @s tower_status matches 2 run setblock ~ ~-0.5 ~ minecraft:blue_concrete_powder
execute if score @s tower_status matches 3 run setblock ~ ~-0.5 ~ minecraft:red_concrete_powder

#execute if score @s tower_status matches 1 run summon minecraft:falling_block ~ ~ ~ {Tags:["sheep_block_sand"],Time:1,BlockState:{Name:"minecraft:purple_concrete_powder"}}
#execute if score @s tower_status matches 2 run summon minecraft:falling_block ~ ~ ~ {Tags:["sheep_block_sand"],Time:1,BlockState:{Name:"minecraft:blue_concrete_powder"}}
#execute if score @s tower_status matches 3 run summon minecraft:falling_block ~ ~ ~ {Tags:["sheep_block_sand"],Time:1,BlockState:{Name:"minecraft:red_concrete_powder"}}