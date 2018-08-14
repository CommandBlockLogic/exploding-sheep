# death_match/main

# check players
function public/check_players

# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 0 run tellraw @a [">> 即将开始死亡竞赛模式, 15秒内再次按下按钮开始游戏!"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 1.. run function death_match/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 0 run function public/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 0 run scoreboard players set system_dm_comfirm system 300

