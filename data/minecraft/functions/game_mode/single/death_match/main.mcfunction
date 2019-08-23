# death_match/main

# check players
function game_mode/select_mode/check_players_single

# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_confirm system matches 0 run tellraw @a [">> 即将开始单人死亡竞赛模式, 15秒内再次按下按钮开始游戏!\n - 5分钟内炸人数多者胜利!\n - 别忘记选择顺手的羊羊类型!"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_confirm system matches 1.. run function game_mode/single/death_match/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_confirm system matches 0 run function game_mode/select_mode/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score system_sdm_confirm system matches 0 run scoreboard players set system_sdm_confirm system 300
