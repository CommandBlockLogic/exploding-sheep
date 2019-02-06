# get_score/pre/main

# change flag
scoreboard players set game_status system 102

# tp
function game_mode/public/tp_game_wait

# display
scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname ["准备..."]
scoreboard objectives setdisplay sidebar sidebar_score
scoreboard players set 准备... sidebar_score 0

# score
scoreboard players set system_red_score system 0
scoreboard players set system_blue_score system 0

# bossbar
bossbar add minecraft:score_time ["temp"]

# death time
scoreboard players set @a death_time_max 200


# main
function game_mode/group/get_score/public/ready_main

# title
title @a times 0 200 10
title @a title [{"text":"红方即将进攻...","color":"red"}]
title @a subtitle ["10"]
tellraw @a [">> 两方轮流进攻地图中央的水晶砂堆 夺取更多水晶砂的一方胜利!"]