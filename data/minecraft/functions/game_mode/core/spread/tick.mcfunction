# game_mode/core/spread/tick

# timer
scoreboard players add sand_drop_timer system 1
# random
execute if score sand_drop_timer system matches 1 run function game_mode/core/spread/random
# drop
execute if score sand_drop_timer system >= sand_drop_start system run function game_mode/core/spread/drop
# end 
execute if score sand_drop_timer system >= sand_drop_end system run scoreboard players set sand_drop_timer system 0