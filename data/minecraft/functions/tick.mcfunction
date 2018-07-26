# tick

function sheep:tick
function keep_items
execute unless entity @e[tag=system_core_mark_blue] run function keep_mark/core
execute unless entity @e[tag=system_core_mark_red] run function keep_mark/core
execute unless entity @e[tag=system_lobby_mark] run function keep_mark/lobby
execute unless entity @e[tag=system_fan_mark] run function keep_mark/fan

effect give @a[scores={food=..19}] minecraft:saturation 1 0 true

function lobby/tick
function player_death/tick

# game mode
scoreboard players add game_status system 0
execute if score game_status system matches 0 run function free/tick
execute if score game_status system matches 1 run function death_match/tick
execute if score game_status system matches 2 run function get_score/tick
execute if score game_status system matches 102 run function get_score/pre/tick
execute if score game_status system matches 3 run function battle/tick
execute if score game_status system matches 103 run function battle/pre/tick
execute if score game_status system matches 8964 run function ending/tick

execute if score game_status system matches 1.. run gamemode spectator @a[team=,gamemode=adventure]
execute if score 游戏开始 pve_system matches 0 if score game_status system matches 1.. run scoreboard players set 游戏开始 pve_system 1




# kill abnormal falling block
execute as @e[type=falling_block] at @s unless block ~ ~-2 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-1.8 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-1.5 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-1.2 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-1 ~ #minecraft:under_sand run kill @s
kill @e[type=item]


# accelerate energy recover
scoreboard players add system_energy system 1
execute if score system_energy system matches 2 at @e[tag=system_core_mark_blue] positioned ~-10 ~-20 ~-10 run scoreboard players add @a[dx=20,dy=30,dz=20,team=blue] s_energy 1
execute if score system_energy system matches 2 at @e[tag=system_core_mark_red] positioned ~-10 ~-20 ~-10 run scoreboard players add @a[dx=20,dy=30,dz=20,team=red] s_energy 1
execute if score system_energy system matches 2 run scoreboard players set system_energy system 0