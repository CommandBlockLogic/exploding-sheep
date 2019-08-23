# public/random_teleport

execute positioned 0 0 0 run spreadplayers ~ ~ 30 30 false @s

execute positioned 0 0 0 at @s if entity @s[y=18,dy=200] if entity @a[distance=0.1..10] run function game_mode/public/random_teleport