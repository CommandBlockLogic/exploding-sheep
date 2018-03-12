# ingame/main

# set
scoreboard players set game_phase system 2

# give weapon
execute as @a[team=!spec] run function minecraft:item/give_all
scoreboard players set @a[team=!spec] keep_item 2

# message
title @a times 10 100 10
title @a title ["游戏开始！"]
title @a subtitle ["用你的小白羊击败对方部落首领！"]
scoreboard players reset * display