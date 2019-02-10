# game_mode/single/boss/main

# add player num
scoreboard players set player_count_red system 0
execute as @a[team=red] run scoreboard players add player_count_red system 1

# 人数不足
execute if score game_status system matches 0 if score player_count_red system matches 0 run tellraw @a [">> 游戏人数不足 无法开始游戏!"]
execute if score game_status system matches 0 if score player_count_red system matches 0 run function game_mode/ending/end
# 人数足够
execute if score game_status system matches 0 if score player_count_red system matches 1.. run function game_mode/single/boss/pre/main

