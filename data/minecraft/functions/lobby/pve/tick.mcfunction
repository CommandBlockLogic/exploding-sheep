# 游戏中
execute if score 游戏开始 pve_system matches 1 run function minecraft:lobby/pve/main_in_game

# 大厅
execute if score 游戏开始 pve_system matches 0 run function minecraft:lobby/pve/main_in_lobby 

# 分数异常
execute unless score 游戏开始 pve_system matches 0.. run scoreboard players set 游戏开始 pve_system 1
