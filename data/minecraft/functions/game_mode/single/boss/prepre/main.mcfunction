# game_mode/single/boss/prepre/main

# 修改当前状态为单人boss准备
scoreboard players set game_status system 105

# 切换至组队模式
execute if score game_mode_status system matches 1 run function lobby/start_game/change_mode

# 传送玩家
tp @a 0 20 0

# 提示
tellraw @a ["给老子加队伍选羊，30秒倒计时"]

# 初始化分数
scoreboard players set system_start_countdown system 600

scoreboard players set twenty system 20
scoreboard players reset * sidebar_score
scoreboard players set boss战倒计时(秒) sidebar_score 0
scoreboard objectives modify sidebar_score displayname ["boss战倒计时"]
scoreboard objectives setdisplay sidebar sidebar_score