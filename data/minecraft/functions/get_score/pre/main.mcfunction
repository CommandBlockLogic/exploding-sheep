# get_score/pre/main

# change flag
scoreboard players set game_status system 102

# tp
tp @a 22 25 -19

# display
scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname ["准备..."]
scoreboard objectives setdisplay sidebar sidebar_score
scoreboard players set 准备... sidebar_score 0

# bossbar
bossbar add minecraft:score_time ["temp"]

# main
function get_score/public/ready_main

# title
title @a times 0 200 10
title @a title [{"text":"红方即将进攻...","color":"red"}]
title @a subtitle ["10"]
tellraw @a [">> 两方轮流进攻地图中央的水晶砂堆 夺取更多水晶砂的一方胜利!"]