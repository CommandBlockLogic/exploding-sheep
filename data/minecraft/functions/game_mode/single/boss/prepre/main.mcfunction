# game_mode/single/boss/prepre/main

# 修改当前状态为单人boss准备
scoreboard players set game_status system 105

# 切换至组队模式
execute if score game_mode_status system matches 1 run function lobby/start_game/change_mode

# 传送玩家
tp @a -166 10 -118

# 清理背包
clear @a

# 提示
tellraw @a [{"text":">> ","color":"red"},{"selector":"@s","color":"white"},{"text":" 发起了隐藏Boss挑战","color":"white"}]
tellraw @a [{"text":">>","color":"red"},{"text":" 想参加的玩家请在30秒内加入队伍并选择您的羊的种类","color":"white"}]

# 初始化分数
scoreboard players set system_start_countdown system 600

scoreboard players set twenty system 20
scoreboard players reset * sidebar_score
scoreboard players set boss战倒计时(秒) sidebar_score 0
scoreboard objectives modify sidebar_score displayname ["boss战倒计时"]
scoreboard objectives setdisplay sidebar sidebar_score