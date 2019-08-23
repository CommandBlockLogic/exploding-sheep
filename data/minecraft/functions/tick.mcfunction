# tick

# 羊羊
function sheep:tick


# 保护标记实体
execute unless entity @e[tag=system_core_mark] run function keep_mark/core
execute unless entity @e[tag=system_lobby_mark] run function keep_mark/lobby
execute unless entity @e[tag=system_lobby_mark_enter_block] run function keep_mark/lobby
execute unless entity @e[tag=system_lobby_item] run function keep_mark/lobby_item
execute unless entity @e[tag=system_fan_mark] run function keep_mark/fan
execute unless entity @e[tag=system_credit_mark] run function keep_mark/credit

# 全局防饥饿
effect give @a[scores={food=..19}] minecraft:saturation 1 0 true

# 大厅常驻（pve、效果）
function lobby/tick

# 玩家死亡复活
function player_death/tick

# 玩家物品常驻
execute unless score game_status system matches 6 run function keep_items

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
execute if score game_status system matches 5 run function game_mode/single/boss/tick
execute if score game_status system matches 105 run function game_mode/single/boss/prepre/tick
execute if score game_status system matches 205 run function game_mode/single/boss/pre/tick
execute if score game_status system matches 8964 run function game_mode/ending/tick


# 游戏进程标记
execute if score game_status system matches 1.. unless score game_status system matches 105 run gamemode spectator @a[team=,gamemode=adventure]
execute if score 游戏开始 pve_system matches 0 if score game_status system matches 1.. run scoreboard players set 游戏开始 pve_system 1

# 游戏选择模式倒计时
function game_mode/select_mode/timer

# 新玩家
execute as @a[tag=!old_player] run function new_player/lobby
execute positioned -172 1 -104 as @a[tag=!old_player_grave,dx=14,dy=30,dz=5] run function new_player/grave
execute positioned -183 1 -140 as @a[tag=!old_player_hole,dx=23,dy=30,dz=5] run function new_player/hole

# 删除多余方块
execute as @e[type=falling_block] at @s unless block ~ ~-1 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.7 ~ #minecraft:under_sand run kill @s
execute as @e[type=falling_block] at @s unless block ~ ~-0.5 ~ #minecraft:under_sand run kill @s
kill @e[type=item,tag=!system_protect_item]
