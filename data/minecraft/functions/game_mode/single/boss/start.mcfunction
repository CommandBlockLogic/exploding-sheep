# game_mode/single/boss/start

# change flag
scoreboard players set game_status system 5

# tp
execute as @a run function game_mode/public/tp_pve_spawn
gamemode spectator @a[team=]



# title
title @a times 0 100 10
title @a title ["战斗开始"]