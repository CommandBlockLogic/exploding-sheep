# game_mode/single/get_score/pre/main

# 修改当前状态为单人抢分前
scoreboard players set game_status system 104

# tp
function game_mode/public/tp_game_wait

# clear
function game_mode/public/game_start_clear

# score
scoreboard players set @a[team=yellow] core_number 0
scoreboard players reset * sidebar_score

scoreboard players set system_game_time system 6000
scoreboard players set system_twenty system 20
scoreboard players set system_sixty system 60
scoreboard players set system_time_second system 0
scoreboard players set system_time_minute system 0

# bossbar
bossbar add minecraft:score_time ["temp"]
# bossbar
bossbar set minecraft:score_time max 6000
bossbar set minecraft:score_time value 6000
bossbar set minecraft:score_time style progress
bossbar set minecraft:score_time color white
bossbar set minecraft:score_time players @a
bossbar set minecraft:score_time visible true
bossbar set minecraft:score_time name ["剩余时间   --:--"]

# sidebar
scoreboard objectives modify sidebar_score displayname ["准备..."]
scoreboard objectives setdisplay sidebar sidebar_score
scoreboard players set 准备... sidebar_score 0

# death time
scoreboard players set @a death_time_max 5

# count down to start
scoreboard players set system_start_countdown system 200

# title
title @a times 0 200 20
title @a title ["游戏即将开始..."]
title @a subtitle ["10"]