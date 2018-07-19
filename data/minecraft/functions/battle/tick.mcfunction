# battle/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect

# summon core
execute if score system_home_time system matches -60 function core/clear/all
execute if score system_home_time system matches -60 function core/generate/home
execute if score system_home_time system matches -60 function core/generate/corner




# check end
execute if score system_red_score system matches ..0 run function get_score/blue_win
execute if score system_blue_score system matches ..0 run function get_score/red_win


# cal & display home blocks
scoreboard players add system_home_time system 1
execute if score system_home_time system matches 20.. run function battle/calculate_home_blocks
execute if score system_home_time system matches 20.. run scoreboard players set system_home_time system 0


# cal & display corner blocks
scoreboard players add system_corner_time system 1
execute if score system_corner_time system matches 20.. run function battle/calculate_corner_blocks
execute if score system_corner_time system matches 20.. run scoreboard players set system_corner_time system 0