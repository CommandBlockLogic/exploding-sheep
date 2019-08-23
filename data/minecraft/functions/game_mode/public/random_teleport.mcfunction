# public/random_teleport

execute positioned 0 0 0 run spreadplayers ~ ~ 30 30 false @s

execute at @s if entity @s[y=11,dy=7] if entity @a[distance=0.1..10] run function game_mode/public/random_teleport