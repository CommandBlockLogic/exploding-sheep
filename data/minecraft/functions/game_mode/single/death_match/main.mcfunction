# death_match/main

# check players
function game_mode/public/check_players

# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_comfirm system matches 0 run tellraw @a [">> 即将开始单人死亡竞赛模式, 15秒内再次按下按钮开始游戏!"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_comfirm system matches 1.. run function game_mode/single/death_match/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_comfirm system matches 0 run function game_mode/public/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_comfirm system matches 0 run scoreboard players set system_sdm_comfirm system 300

