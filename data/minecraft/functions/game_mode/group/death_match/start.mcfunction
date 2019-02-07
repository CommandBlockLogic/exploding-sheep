# death_match/start


# change flag
scoreboard players set game_status system 1

# tp
execute as @a run function game_mode/public/tp_game_spawn
gamemode spectator @a[team=]

scoreboard players reset * sidebar_score
scoreboard objectives modify sidebar_score displayname ["耗尽对方剩余生命值!"]

# title
title @a times 10 50 10
title @a[team=red] title ["我方拥有",{"score":{"name":"system_red_death_count","objective":"system"}},"点生命!"]
title @a[team=blue] title ["我方拥有",{"score":{"name":"system_blue_death_count","objective":"system"}},"点生命!"]
title @a subtitle ["游戏开始"]
tellraw @a [">> 战斗耗尽对方的生命值吧!"]