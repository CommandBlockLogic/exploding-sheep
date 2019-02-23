# core/center/slice

execute at @s rotated ~ 0 positioned ^ ^ ^4 positioned ~ ~2 ~ rotated ~180 -30 run function minecraft:game_mode/core/center/block
scoreboard players set @s s_temp4 0
execute at @s run tp @s ~ ~ ~ ~10 ~