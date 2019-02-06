# game_mode/public/check_players_single

# add player num
scoreboard players set player_count_yellow system 0
execute as @a[team=yellow] run scoreboard players add player_count_yellow system 1

# init flag
scoreboard players set system_flag system 0
function game_mode/public/init_confirm_timer
# check if greater than 1
execute if score player_count_yellow system matches 2.. run scoreboard players add system_flag system 1
execute if score game_status system matches 0 if score player_count_yellow system matches 0 run tellraw @a [">> 游戏人数不足 无法开始游戏!"]


# set score
execute if score game_status system matches 0 if score system_flag system matches 0 run function gamemode/public/reset_confirm_timer
