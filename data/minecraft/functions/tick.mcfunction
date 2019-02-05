# tick

# 羊羊
function sheep:tick
#function keep_items
# 保护标记实体
execute unless entity @e[tag=system_core_mark] run function keep_mark/core
execute unless entity @e[tag=system_lobby_mark] run function keep_mark/lobby
execute unless entity @e[tag=system_lobby_mark_enter_block] run function keep_mark/lobby
execute unless entity @e[tag=system_fan_mark] run function keep_mark/fan

# 全局防饥饿
effect give @a[scores={food=..19}] minecraft:saturation 1 0 true

# 大厅常驻（pve、效果）
function lobby/tick

# 玩家死亡复活
function player_death/tick

# 游戏模式常驻
scoreboard players add game_status system 0
execute if score game_status system matches 0 run function game_mode/free/tick
execute if score game_status system matches 1 run function game_mode/group/death_match/tick
execute if score game_status system matches 101 run function game_mode/group/death_match/pre/tick
execute if score game_status system matches 2 run function game_mode/group/get_score/tick
execute if score game_status system matches 102 run function game_mode/group/get_score/pre/tick
execute if score game_status system matches 202 run function game_mode/group/get_score/red/tick
execute if score game_status system matches 302 run function game_mode/group/get_score/mid/tick
execute if score game_status system matches 402 run function game_mode/group/get_score/blue/tick
execute if score game_status system matches 3 run function game_mode/single/death_match/tick
execute if score game_status system matches 103 run function game_mode/single/death_match/pre/tick
execute if score game_status system matches 4 run function game_mode/single/get_score/tick
execute if score game_status system matches 104 run function game_mode/single/get_score/pre/tick


execute if score game_status system matches 8964 run function game_mode/ending/tick

# 游戏进程标记
execute if score game_status system matches 1.. run gamemode spectator @a[team=,gamemode=adventure]
execute if score 游戏开始 pve_system matches 0 if score game_status system matches 1.. run scoreboard players set 游戏开始 pve_system 1

# 游戏选择模式倒计时
execute if score system_gc_comfirm system matches 1.. run scoreboard players remove system_gc_comfirm system 1
execute if score system_dm_comfirm system matches 1.. run scoreboard players remove system_dm_comfirm system 1
execute if score system_sdm_comfirm system matches 1.. run scoreboard players remove system_sdm_comfirm system 1



# 删除多余方块
execute as @e[type=falling_block] at @s unless block ~ ~-1 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.7 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.5 ~ #minecraft:under_sand run kill @s
kill @e[type=item]
