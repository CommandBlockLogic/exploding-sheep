# game_mode/single/boss/pre/main

# 修改当前状态为单人boss前
scoreboard players set game_status system 205

# tp
function game_mode/public/tp_game_wait


# clear
function game_mode/public/game_start_clear

# team
team modify red color yellow

# 分数等的初始化
scoreboard objectives setdisplay sidebar
scoreboard players set @a[team=red] death_boss 0

# 死亡重生时间
scoreboard players set @a death_time_max 5


# 准备阶段时间
scoreboard players set system_start_countdown system 100

# title
title @a times 0 100 10
title @a title ["Boss战即将开始..."]
title @a subtitle ["5"]