# get_score/mid/main

# change flag
scoreboard players set game_status system 302

# main
function game_mode/group/get_score/public/ready_main

# display
scoreboard objectives modify sidebar_score displayname ["准备..."]

# title
title @a times 0 200 10
title @a title [{"text":"红方结束了进攻!","color":"red"}]
title @a subtitle [{"text":"蓝方即将进攻...","color":"blue"}]
title @a subtitle ["10"]