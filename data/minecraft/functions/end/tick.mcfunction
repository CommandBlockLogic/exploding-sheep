# end/tick

scoreboard players add game_end_timer system 1

clear @a
execute if score game_end_timer system matches 200..999 run function reset/all