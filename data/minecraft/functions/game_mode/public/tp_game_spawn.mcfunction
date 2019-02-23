# public/tp_game_spawn

scoreboard players set @s s_energy 999
scoreboard players set @s s_fan_num 2
tp @s[team=blue] -36 15 -40 -90 0
tp @s[team=red] 40 14 34 100 0
tp @s[team=] 0 20 0
execute as @s[team=yellow] run function game_mode/public/random_teleport