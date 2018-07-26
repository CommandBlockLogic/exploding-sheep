# death_match/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect

# check end
execute if score system_red_death_count system matches 0 run function get_score/blue_win
execute if score system_blue_death_count system matches 0 run function get_score/red_win

# display score
execute store result score 红队剩余生命 sidebar_score run scoreboard players get system_red_death_count system
execute store result score 蓝队剩余生命 sidebar_score run scoreboard players get system_blue_death_count system
