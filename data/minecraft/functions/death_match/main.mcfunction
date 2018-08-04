# death_match/main

# add player num
scoreboard players set player_count_red system 0
scoreboard players set player_count_blue system 0
execute as @a[team=red] run scoreboard players add player_count_red system 1
execute as @a[team=blue] run scoreboard players add player_count_blue system 1
execute store result score player_diff system run scoreboard players get player_count_red system
scoreboard players operation player_diff system -= player_count_blue system

# init flag
scoreboard players set system_flag system 0
scoreboard players add system_dm_comfirm system 0
# check if greater than 1
execute if score player_count_red system matches 1.. if score player_count_blue system matches 1.. run scoreboard players add system_flag system 1
execute if score game_status system matches 0 if score player_count_red system matches 0 if score player_count_blue system matches 1.. run tellraw @a [">> 红队人数不足 无法开始游戏!"]
execute if score game_status system matches 0 if score player_count_blue system matches 0 if score player_count_red system matches 1.. run tellraw @a [">> 蓝队人数不足 无法开始游戏!"]
execute if score game_status system matches 0 if score player_count_blue system matches 0 if score player_count_red system matches 0 run tellraw @a [">> 无人加入队伍 无法开始游戏!"]
# check if balance
execute if score game_status system matches 0 if score system_flag system matches 1 unless score player_diff system matches -1..1 run tellraw @a [">> 两队人数不平衡 无法开始游戏!"]
# check confirm
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 0 run tellraw @a [">> 即将开始死亡竞赛模式, 15秒内再次按下按钮开始游戏!"]
# start game
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 1.. run function death_match/pre/main

# set score
execute if score game_status system matches 0 if score system_flag system matches 0 run function public/reset_confirm_timer
execute if score game_status system matches 0 unless score player_diff system matches -1..1 run function public/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 0 run function public/reset_confirm_timer
execute if score game_status system matches 0 if score system_flag system matches 1 if score player_diff system matches -1..1 if score system_dm_comfirm system matches 0 run scoreboard players set system_dm_comfirm system 300

