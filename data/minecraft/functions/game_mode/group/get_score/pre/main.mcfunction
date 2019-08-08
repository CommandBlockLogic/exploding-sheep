# game_mode/group/get_score/pre/main

# change flag
scoreboard players set game_status system 102

# tp
function game_mode/public/tp_game_wait
# clear
function game_mode/public/game_start_clear

# display
scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname ["准备..."]
scoreboard objectives setdisplay sidebar sidebar_score
scoreboard players set 准备... sidebar_score 0

scoreboard players set system_game_time system 6000
scoreboard players set system_twenty system 20
scoreboard players set system_sixty system 60
scoreboard players set system_ten system 10
scoreboard players set system_five system 5
scoreboard players set system_time_second system 0
scoreboard players set system_time_minute system 0

# bossbar
bossbar add minecraft:score_time ["temp"]
# bossbar
bossbar set minecraft:score_time max 77
bossbar set minecraft:score_time value 77
bossbar set minecraft:score_time style progress
bossbar set minecraft:score_time color white
bossbar set minecraft:score_time players @a
bossbar set minecraft:score_time visible true
bossbar set minecraft:score_time name ["剩余水晶"]


# death time
scoreboard players set @a death_time_max 160




# count down to start
scoreboard players set system_start_countdown system 300

# title
title @a times 0 300 10
title @a title [{"text":"游戏即将开始...","color":"white"}]
title @a subtitle ["15"]
tellraw @a [">> 抢占地图中央的水晶砂堆，时间结束后拥有沙堆一方胜利!"]