# public/random_teleport

execute positioned 0 0 0 run spreadplayers ~ ~ 30 30 false @s

execute at @s if entity @s[y=16,dy=200] if entity @a[distance=0.1..10] run function game_mode/public/random_teleport