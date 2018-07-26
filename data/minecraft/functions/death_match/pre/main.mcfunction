# death_match/pre/main

# change flag
scoreboard players set game_status system 101

# tp
tp @a 0 39 0
gamemode adventure @a

# clear
clear @a
effect clear @a
kill @e[tag=sheep_type_orange]
kill @e[tag=sheep_type_lime]
execute as @a store result score @s s_class_2 run scoreboard players get @s s_class
execute as @a run function sheep:ultimate/end


# score
scoreboard players reset * sidebar_score
scoreboard players set 红队剩余生命 sidebar_score 10
scoreboard players set 蓝队剩余生命 sidebar_score 10
scoreboard players set system_red_death_count system 10
scoreboard players set system_blue_death_count system 10

scoreboard objectives modify sidebar_score displayname ["剩余生命"]
scoreboard objectives setdisplay sidebar sidebar_score



# death time
scoreboard players operation @a death_time_max 100






# count down to start
scoreboard players set system_start_countdown system 100

# title
title @a times 0 100 10
title @a title ["游戏即将开始..."]
title @a subtitle ["5"]