# tick

function sheep:tick
function keep_items
execute unless entity @e[tag=system_core_mark_blue] run function keep_mark/core
execute unless entity @e[tag=system_core_mark_red] run function keep_mark/core
execute unless entity @e[tag=system_lobby_mark] run function keep_mark/lobby
execute unless entity @e[tag=system_fan_mark] run function keep_mark/fan

effect give @a[scores={food=..19}] minecraft:saturation 1 0 true

function lobby/tick

# game mode
scoreboard players add game_status system 0
execute if score game_status system matches 0 run function free/tick
execute if score game_status system matches 1 run function death_match/tick
execute if score game_status system matches 2 run function get_score/tick
execute if score game_status system matches 8964 run function ending/tick




# kill abnormal falling block
execute as @e[type=falling_block] at @s unless block ~ ~-1 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.7 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.3 ~ #minecraft:under_sand run kill @s
kill @e[type=item]