# core/center/types

scoreboard players add @s tower_status 0
execute if score @s tower_status matches 0 run scoreboard players set @s tower_status 1
execute if score @s tower_status matches 1 run fill ~ ~-0.5 ~ ~ ~-0.5 ~ minecraft:purple_concrete_powder keep
execute if score @s tower_status matches 2 run fill ~ ~-0.5 ~ ~ ~-0.5 ~ minecraft:blue_concrete_powder keep
execute if score @s tower_status matches 3 run fill ~ ~-0.5 ~ ~ ~-0.5 ~ minecraft:red_concrete_powder keep
