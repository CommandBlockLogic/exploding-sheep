# game_mode/core/harden

execute if entity @s[scores={tower_status=2}] run fill ~-9 ~ ~-9 ~9 ~10 ~9 minecraft:blue_concrete replace minecraft:blue_concrete_powder
scoreboard players set @s[scores={tower_status=2}] tower_status 20

execute if entity @s[scores={tower_status=3}] run fill ~-9 ~ ~-9 ~9 ~10 ~9 minecraft:red_concrete replace minecraft:red_concrete_powder
scoreboard players set @s[scores={tower_status=3}] tower_status 