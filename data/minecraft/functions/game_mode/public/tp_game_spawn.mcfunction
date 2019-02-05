# public/tp_game_spawn

tp @s[team=blue] -36 15 -40 -90 0
tp @s[team=red] 40 14 34 100 0
tp @s[team=] 0 20 0
execute as @a[team=yellow] at @s run function game_mode/public/random_teleport