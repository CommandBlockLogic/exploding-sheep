# tick

function sheep:tick
#function keep_items
execute unless entity @e[tag=system_core_mark] run function keep_mark/core
execute unless entity @e[tag=system_lobby_mark] run function keep_mark/lobby
execute unless entity @e[tag=system_lobby_mark_enter_block] run function keep_mark/lobby
execute unless entity @e[tag=system_fan_mark] run function keep_mark/fan

effect give @a[scores={food=..19}] minecraft:saturation 1 0 true

function lobby/tick
function player_death/tick

# game mode
scoreboard players add game_status system 0
execute if score game_status system matches 0 run function free/tick
execute if score game_status system matches 1 run function death_match/tick
execute if score game_status system matches 101 run function death_match/pre/tick
execute if score game_status system matches 2 run function get_score/tick
execute if score game_status system matches 102 run function get_score/pre/tick
execute if score game_status system matches 202 run function get_score/red/tick
execute if score game_status system matches 302 run function get_score/mid/tick
execute if score game_status system matches 402 run function get_score/blue/tick
execute if score game_status system matches 3 run function battle/tick
execute if score game_status system matches 103 run function battle/pre/tick
execute if score game_status system matches 8964 run function ending/tick

execute if score game_status system matches 1.. run gamemode spectator @a[team=,gamemode=adventure]
execute if score 游戏开始 pve_system matches 0 if score game_status system matches 1.. run scoreboard players set 游戏开始 pve_system 1

# game start
execute if score system_gc_comfirm system matches 1.. run scoreboard players remove system_gc_comfirm system 1
execute if score system_dm_comfirm system matches 1.. run scoreboard players remove system_dm_comfirm system 1



# kill abnormal falling block
execute as @e[type=falling_block] at @s unless block ~ ~-1 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.7 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.5 ~ #minecraft:under_sand run kill @s
kill @e[type=item]
