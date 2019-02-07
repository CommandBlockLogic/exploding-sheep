# death_match/main

# check players
function game_mode/select_mode/check_players

# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_confirm system matches 0 run tellraw @a [">> 即将开始组队死亡竞赛模式, 15秒内再次按下按钮开始游戏!\n - 耗尽对方生命值以取得胜利"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_confirm system matches 1.. run function game_mode/group/death_match/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_confirm system matches 0 run function game_mode/select_mode/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_confirm system matches 0 run scoreboard players set system_dm_confirm system 300

