# battle/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect


# check end
execute if score system_red_score system matches ..0 run function get_score/blue_win
execute if score system_blue_score system matches ..0 run function get_score/red_win


# cal & display blocks
scoreboard players add system_time system 1
execute if score system_time system matches 20.. run function battle/calculate_blocks
execute if score system_time system matches 20.. run scoreboard players set system_time system 0
