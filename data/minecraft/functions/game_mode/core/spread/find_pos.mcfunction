# game_mode/core/spread/find_pos

# distance 3..8
tag @s remove fucking_pos
spreadplayers ~ ~ 1 8 false @s
tag @s[distance=8..] add fucking_pos
tag @s[distance=..3] add fucking_pos
tag @s[y=14,dy=200] add fucking_pos
execute if entity @s[tag=fucking_pos] run function game_mode/core/spread/find_pos