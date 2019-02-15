execute if score 游戏状态 boss_4_system matches 0 run function minecraft:game_mode/single/boss/system/status_0/tick
execute if score 游戏状态 boss_4_system matches 1 run function minecraft:game_mode/single/boss/system/status_1/tick
execute if score 游戏状态 boss_4_system matches 2 run function minecraft:game_mode/single/boss/system/status_2/tick
execute if score 游戏状态 boss_4_system matches 1.. unless entity @e[tag=boss4] run function minecraft:game_mode/single/boss/win