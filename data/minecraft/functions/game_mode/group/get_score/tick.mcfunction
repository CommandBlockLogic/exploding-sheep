# game_mode/group/get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect





# summon center
execute if score summon_center_time system matches 1.. run scoreboard players remove summon_center_time system 1
execute if score summon_center_time system matches 1.. run function game_mode/group/get_score/summon_core

# change owner
execute store result score center_block_count system as @e[tag=system_core_mark_center,limit=1,scores={tower_status=1}] at @s run clone ~-3 ~-2 ~-3 ~3 ~3 ~3 ~-3 ~-2 ~-3 filtered minecraft:purple_concrete_powder force
execute store result score center_block_count system as @e[tag=system_core_mark_center,limit=1,scores={tower_status=2}] at @s run clone ~-3 ~-2 ~-3 ~3 ~3 ~3 ~-3 ~-2 ~-3 filtered minecraft:blue_concrete_powder force
execute store result score center_block_count system as @e[tag=system_core_mark_center,limit=1,scores={tower_status=3}] at @s run clone ~-3 ~-2 ~-3 ~3 ~3 ~3 ~-3 ~-2 ~-3 filtered minecraft:red_concrete_powder force
execute if score center_block_count system matches 0..3 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 1 run function game_mode/group/get_score/swap/find
execute if score center_block_count system matches 0..3 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 2 run function game_mode/group/get_score/swap/to_red
execute if score center_block_count system matches 0..3 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 3 run function game_mode/group/get_score/swap/to_blue

# add protect effect
execute if score center_block_count system matches ..38 if score summon_center_time system matches ..10 run function game_mode/group/get_score/protect/tick
# hint
execute if score center_block_count system matches ..38 if score center_block_refreshed system matches 1 if score summon_center_time system matches ..10 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 2 run function game_mode/group/get_score/protect/hint_blue
execute if score center_block_count system matches ..38 if score center_block_refreshed system matches 1 if score summon_center_time system matches ..10 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 3 run function game_mode/group/get_score/protect/hint_red
execute if score center_block_count system matches ..38 if score center_block_refreshed system matches 1 if score summon_center_time system matches ..10 run scoreboard players set center_block_refreshed system 0




# cal time
scoreboard players remove system_game_time system 1
# display time
scoreboard players operation system_second system = system_game_time system
scoreboard players operation system_second system /= system_twenty system
scoreboard players operation 剩余时间(秒) sidebar_score = system_second system
execute if score system_game_time system matches 2400 run tellraw @a [">> 距争夺结束还有",{"text":"2","color":"yellow"},"分钟!"]
execute if score system_game_time system matches 2400 run scoreboard objectives modify sidebar_score displayname {"text":"还有时间!","color":"yellow"}
execute if score system_game_time system matches 1200 run tellraw @a [">> 距争夺结束还有",{"text":"1","color":"yellow"},"分钟!"]
execute if score system_game_time system matches 600 run tellraw @a [">> 距争夺结束还有",{"text":"30","color":"red"},"秒!"]
execute if score system_game_time system matches 600 run scoreboard objectives modify sidebar_score displayname {"text":"时间不多了!","color":"red"}
execute if score system_game_time system matches 300 run title @a times 0 300 10
execute if score system_game_time system matches 300 run title @a title [""]
execute if score system_game_time system matches 300 run scoreboard objectives modify sidebar_score displayname {"text":"即将结束...","color":"red"}
execute if score system_game_time system matches 300 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 14"]
execute if score system_game_time system matches 280 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 13"]
execute if score system_game_time system matches 260 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 12"]
execute if score system_game_time system matches 240 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 11"]
execute if score system_game_time system matches 220 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 10"]
execute if score system_game_time system matches 200 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 9"]
execute if score system_game_time system matches 180 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 8"]
execute if score system_game_time system matches 160 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 7"]
execute if score system_game_time system matches 140 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 6"]
execute if score system_game_time system matches 120 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 5"]
execute if score system_game_time system matches 100 run title @a subtitle [{"text":"争夺即将结束...","color":"white"}," 4"]
execute if score system_game_time system matches 80 run title @a subtitle [{"text":"争夺即将结束...","color":"white"},{"text":" 3","color":"yellow"}]
execute if score system_game_time system matches 60 run title @a subtitle [{"text":"争夺即将结束...","color":"white"},{"text":" 2","color":"gold"}]
execute if score system_game_time system matches 40 run title @a subtitle [{"text":"争夺即将结束...","color":"white"},{"text":" 1","color":"red"}]
execute if score system_game_time system matches 20 run scoreboard objectives modify sidebar_score displayname {"text":"游戏结束","color":"red"}
# display sands
execute store result bossbar minecraft:score_time value run scoreboard players get center_block_count system




# check end
execute if score system_game_time system matches ..0 run function game_mode/group/get_score/end
