# get_score/mid/main

# change flag
scoreboard players set game_status system 302

# main
function game_mode/group/get_score/public/ready_main

# display
scoreboard objectives modify sidebar_score displayname ["准备..."]
tellraw @a [">> ",{"text":"红石部落","color":"red"},"结束了进攻."]


# title
title @a times 0 200 10
title @a title [{"text":"青金石部落即将进攻...","color":"blue"}]
title @a subtitle ["15"]