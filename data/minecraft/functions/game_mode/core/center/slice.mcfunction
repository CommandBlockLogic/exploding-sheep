# core/center/slice

execute at @s rotated ~ 0 positioned ^ ^ ^6.8 positioned ~ ~-1 ~ rotated ~180 -15 run function minecraft:game_mode/core/center/block
scoreboard players set @s s_temp4 0
execute at @s run tp @s ~ ~ ~ ~10 ~