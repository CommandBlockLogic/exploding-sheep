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
# death time = total_death_time * team_player_num / total_player_num
scoreboard players set total_death_time system 200
scoreboard players set red_player_num system 0
scoreboard players set blue_player_num system 0
scoreboard players set total_player_num system 0
execute as @a[team=red] run scoreboard players add red_player_num system 1
execute as @a[team=blue] run scoreboard players add blue_player_num system 1
execute store result score total_player_num system run scoreboard players get red_player_num system
scoreboard players operation red_player_num system += blue_player_num system
execute as @a store result score @s death_time_max run scoreboard players get total_death_time system
execute as @a[team=red] run scoreboard players operation @s death_time_max *= red_player_num system
execute as @a[team=blue] run scoreboard players operation @s death_time_max *= blue_player_num system
execute as @a run scoreboard players operation @s death_time_max /= total_player_num system






# count down to start
scoreboard players set system_start_countdown system 100

# title
title @a times 0 100 10
title @a title ["游戏即将开始..."]
title @a subtitle ["5"]