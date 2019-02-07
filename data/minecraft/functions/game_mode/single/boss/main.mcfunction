# game_mode/single/boss/main

# check players
function game_mode/select_mode/check_players_single

# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_boss_confirm system matches 0 run tellraw @a [">> 即将开始boss战模式, 15秒内再次按下按钮开始游戏!\n - ???"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_boss_confirm system matches 1.. run function game_mode/single/boss/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_boss_confirm system matches 0 run function game_mode/select_mode/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_boss_confirm system matches 0 run scoreboard players set system_boss_confirm system 300
