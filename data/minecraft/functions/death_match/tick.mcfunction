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
execute if score system_game_time system matches ..3600 run scoreboard players set system_time_limit system 3600
# infinite fire
execute if score system_game_time system matches 3601..10000 run scoreboard players set system_time_limit system 10000
# game end
execute if score system_game_time system matches 10001..15000 run scoreboard players set system_time_limit system 15000
# calculate second and minute
scoreboard players operation system_time_limit system -= system_game_time system
execute store result score system_time_second system run scoreboard players get system_time_limit system
scoreboard players operation system_time_second system /= twenty system

# display score
execute store result bossbar minecraft:red_score value run scoreboard players get system_red_death_count system
execute store result bossbar minecraft:blue_score value run scoreboard players get system_blue_death_count system
bossbar set minecraft:red_score name ["",{"text":"剩余羊羊能量","color":"red"},": ",{"score":{"name":"system_red_death_count","objective":"system"}}]
bossbar set minecraft:blue_score name ["",{"text":"剩余羊羊能量","color":"blue"},": ",{"score":{"name":"system_blue_death_count","objective":"system"}}]
execute if score system_game_time system matches ..3600 store result score 剩余时间至全场高亮(秒) sidebar_score run scoreboard players get system_time_second system
execute if score system_game_time system matches 3601 run scoreboard players reset * sidebar_score
execute if score system_game_time system matches 3601..10000 store result score 剩余时间至无限能量(秒) sidebar_score run scoreboard players get system_time_second system
execute if score system_game_time system matches 10001 run scoreboard players reset * sidebar_score
execute if score system_game_time system matches 10001..15000 store result score 剩余时间至游戏结束(秒) sidebar_score run scoreboard players get system_time_second system

# check end
execute if score system_red_death_count system matches 0 run function get_score/blue_win
execute if score system_blue_death_count system matches 0 run function get_score/red_win
execute if score system_game_time system matches 15000.. run function get_score/draw


# effect
# glowing
execute if score system_game_time system matches 3601 run title @a title ["全场高亮!"]
execute if score system_game_time system matches 3601 run title @a subtitle ["羊羊水晶的力量正在被激活!"]
execute if score system_game_time system matches 3601.. run effect give @a[team=!] minecraft:glowing 2 0
# infinite fire
execute if score system_game_time system matches 10001 run title @a title ["无限火力!"]
execute if score system_game_time system matches 10001 run title @a subtitle ["羊羊水晶的力量最大化了!"]
execute if score system_game_time system matches 10001.. run scoreboard players set @a s_energy 999