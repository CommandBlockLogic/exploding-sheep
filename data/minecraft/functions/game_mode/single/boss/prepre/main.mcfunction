# game_mode/single/boss/prepre/main

# 修改当前状态为单人boss准备
scoreboard players set game_status system 105

# 切换至组队模式
execute if score game_mode_status system matches 0 run function lobby/start_game/change_mode

# 传送玩家
tp @a -166 10 -118

# 清理背包
clear @a


# 清理队伍
team empty blue
team empty red
team empty yellow

# 提示
tellraw @a [{"text":">> ","color":"red"},{"selector":"@s","color":"white"},{"text":" 发起了隐藏Boss挑战.","color":"white"}]
tellraw @a [{"text":">>","color":"red"},{"text":" 请在30秒内加入游戏并选择顺手的羊羊.","color":"white"}]

# 加入队伍
team join yellow @s
tag @s add team_leader

# 初始化分数
scoreboard players set system_start_countdown system 600
scoreboard players set system_temp system 0

scoreboard players set twenty system 20
scoreboard players reset * sidebar_score
scoreboard players set boss战倒计时(秒) sidebar_score 0
scoreboard objectives modify sidebar_score displayname ["boss战倒计时"]
scoreboard objectives setdisplay sidebar sidebar_score

# bossbar
bossbar add minecraft:score_time ["temp"]
# bossbar
bossbar set minecraft:score_time max 600
bossbar set minecraft:score_time value 600
bossbar set minecraft:score_time style progress
bossbar set minecraft:score_time color white
bossbar set minecraft:score_time players @a
bossbar set minecraft:score_time visible true
bossbar set minecraft:score_time name ["剩余时间: 0秒"]