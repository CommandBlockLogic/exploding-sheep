# death_match/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect

# time
scoreboard players add system_game_time system 1
# glowing
execute if score system_game_time system matches ..6000 run scoreboard players set system_time_limit system 6000
# infinite fire
execute if score system_game_time system matches 6001..12000 run scoreboard players set system_time_limit system 12000
# game end
execute if score system_game_time system matches 12001..18000 run scoreboard players set system_time_limit system 18000
# calculate second and minute
scoreboard players operation system_time_limit system -= system_game_time system
execute store result score system_time_second system run scoreboard players get system_time_limit system
scoreboard players operation system_time_second system /= twenty system
scoreboard players operation system_time_minute system = system_time_second system
scoreboard players operation system_time_minute system /= sixty system
scoreboard players operation system_time_second system %= sixty system


# display score
execute if score system_game_time system matches ..6000 if score system_time_minute system matches 0..9 if score system_time_second system matches 0..9 run scoreboard objectives modify sidebar_score displayname ["剩余 0",{"score":{"name":"system_time_minute","objective":"system"}},":0",{"score":{"name":"system_time_second","objective":"system"}},"至全场高亮"]
execute if score system_game_time system matches ..6000 if score system_time_minute system matches 0..9 if score system_time_second system matches 10.. run scoreboard objectives modify sidebar_score displayname ["剩余 0",{"score":{"name":"system_time_minute","objective":"system"}},":",{"score":{"name":"system_time_second","objective":"system"}},"至全场高亮"]
execute if score system_game_time system matches ..6000 if score system_time_minute system matches 10.. if score system_time_second system matches 0..9 run scoreboard objectives modify sidebar_score displayname ["剩余 ",{"score":{"name":"system_time_minute","objective":"system"}},":0",{"score":{"name":"system_time_second","objective":"system"}},"至全场高亮"]
execute if score system_game_time system matches ..6000 if score system_time_minute system matches 10.. if score system_time_second system matches 10.. run scoreboard objectives modify sidebar_score displayname ["剩余 ",{"score":{"name":"system_time_minute","objective":"system"}},":",{"score":{"name":"system_time_second","objective":"system"}},"至全场高亮"]
execute if score system_game_time system matches 6001..12000 if score system_time_minute system matches 0..9 if score system_time_second system matches 0..9 run scoreboard objectives modify sidebar_score displayname ["剩余 0",{"score":{"name":"system_time_minute","objective":"system"}},":0",{"score":{"name":"system_time_second","objective":"system"}},"至无限能量"]
execute if score system_game_time system matches 6001..12000 if score system_time_minute system matches 0..9 if score system_time_second system matches 10.. run scoreboard objectives modify sidebar_score displayname ["剩余 0",{"score":{"name":"system_time_minute","objective":"system"}},":",{"score":{"name":"system_time_second","objective":"system"}},"至无限能量"]
execute if score system_game_time system matches 6001..12000 if score system_time_minute system matches 10.. if score system_time_second system matches 0..9 run scoreboard objectives modify sidebar_score displayname ["剩余 ",{"score":{"name":"system_time_minute","objective":"system"}},":0",{"score":{"name":"system_time_second","objective":"system"}},"至无限能量"]
execute if score system_game_time system matches 6001..12000 if score system_time_minute system matches 10.. if score system_time_second system matches 10.. run scoreboard objectives modify sidebar_score displayname ["剩余 ",{"score":{"name":"system_time_minute","objective":"system"}},":",{"score":{"name":"system_time_second","objective":"system"}},"至无限能量"]
execute if score system_game_time system matches 12001..18000 if score system_time_minute system matches 0..9 if score system_time_second system matches 0..9 run scoreboard objectives modify sidebar_score displayname ["剩余 0",{"score":{"name":"system_time_minute","objective":"system"}},":0",{"score":{"name":"system_time_second","objective":"system"}},"至游戏结束"]
execute if score system_game_time system matches 12001..18000 if score system_time_minute system matches 0..9 if score system_time_second system matches 10.. run scoreboard objectives modify sidebar_score displayname ["剩余 0",{"score":{"name":"system_time_minute","objective":"system"}},":",{"score":{"name":"system_time_second","objective":"system"}},"至游戏结束"]
execute if score system_game_time system matches 12001..18000 if score system_time_minute system matches 10.. if score system_time_second system matches 0..9 run scoreboard objectives modify sidebar_score displayname ["剩余 ",{"score":{"name":"system_time_minute","objective":"system"}},":0",{"score":{"name":"system_time_second","objective":"system"}},"至游戏结束"]
execute if score system_game_time system matches 12001..18000 if score system_time_minute system matches 10.. if score system_time_second system matches 10.. run scoreboard objectives modify sidebar_score displayname ["剩余 ",{"score":{"name":"system_time_minute","objective":"system"}},":",{"score":{"name":"system_time_second","objective":"system"}},"至游戏结束"]

execute store result bossbar minecraft:red_score value run scoreboard players get system_red_death_count system
execute store result bossbar minecraft:blue_score value run scoreboard players get system_blue_death_count system
execute store result score 红队羊羊能量 sidebar_score run scoreboard players get system_red_death_count system
execute store result score 蓝队羊羊能量 sidebar_score run scoreboard players get system_blue_death_count system


# check end
execute if score system_red_death_count system matches 0 run function get_score/blue_win
execute if score system_blue_death_count system matches 0 run function get_score/red_win
execute if score system_game_time system matches 18000.. run function get_score/draw


# effect
# glowing
execute if score system_game_time system matches 6001 run title @a title ["全场高亮!"]
execute if score system_game_time system matches 6001 run title @a subtitle ["羊羊水晶的力量正在被激活!"]
execute if score system_game_time system matches 6001.. run effect give @a[team=!] minecraft:glowing 2 0
# infinite fire
execute if score system_game_time system matches 12001 run title @a title ["无限火力!"]
execute if score system_game_time system matches 12001 run title @a subtitle ["羊羊水晶的力量最大化了!"]
execute if score system_game_time system matches 12001.. run scoreboard players set @a s_energy 999