# game_mode/core/soften

execute if entity @s[scores={tower_status=20}] run fill ~-9 ~ ~-9 ~9 ~10 ~9 minecraft:blue_concrete_powder replace minecraft:blue_concrete
scoreboard players set @s[scores={tower_status=20}] tower_status 2

execute if entity @s[scores={tower_status=30}] run fill ~-9 ~ ~-9 ~9 ~10 ~9 minecraft:red_concrete_powder replace minecraft:red_concrete
scoreboard players set @s[scores={tower_status=30}] tower_status 3