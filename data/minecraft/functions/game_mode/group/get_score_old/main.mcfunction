# get_score/main

# check players
function game_mode/select_mode/check_players

# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_gc_confirm system matches 0 run tellraw @a [">> 即将开始部落水晶争夺模式, 15秒内再次按下按钮开始游戏!\n - 轮流进攻地图中央的水晶砂堆, 得分高者胜利!\n - 别忘记选择顺手的羊羊类型!"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_gc_confirm system matches 1.. run function game_mode/group/get_score/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_gc_confirm system matches 0 run function game_mode/select_mode/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_gc_confirm system matches 0 run scoreboard players set system_gc_confirm system 300
