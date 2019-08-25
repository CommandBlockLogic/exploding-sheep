# game_mode/single/get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect


# cal time
scoreboard players remove system_game_time system 1
# display time
execute store result bossbar minecraft:score_time value run scoreboard players get system_game_time system
scoreboard players operation system_second system = system_game_time system
scoreboard players operation system_second system /= system_twenty system
scoreboard players operation system_minute system = system_second system
scoreboard players operation system_minute system /= system_sixty system
scoreboard players operation system_second system %= system_sixty system
execute if score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":0",{"score":{"name":"system_second","objective":"system"}}]
execute unless score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":",{"score":{"name":"system_second","objective":"system"}}]


# display time
execute if score system_game_time system matches 2400 run tellraw @a [">> 距争夺结束还有",{"text":"2","color":"yellow"},"分钟!"]
execute if score system_game_time system matches 1200 run tellraw @a [">> 距争夺结束还有",{"text":"1","color":"yellow"},"分钟!"]
execute if score system_game_time system matches 600 run tellraw @a [">> 距争夺结束还有",{"text":"30","color":"red"},"秒!"]
execute if score system_game_time system matches 300 run title @a times 0 300 10
execute if score system_game_time system matches 300 run title @a title [""]
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

# core score
execute as @a[scores={core_destory=1..}] run scoreboard players operation @s core_number += @s core_destory
scoreboard players set @a[scores={core_destory=1..}] core_destory 0

# display score
execute as @a[team=yellow] store result score @s sidebar_score run scoreboard players get @s core_number

# check end
execute if score system_game_time system matches ..0 run function game_mode/single/death_match/end

# glowing
scoreboard players set max_num system 0
execute as @a[team=yellow] run scoreboard players operation max_num system > @s core_number
execute if score max_num system matches 1.. as @a[team=yellow] if score @s core_number = max_num system run effect give @s minecraft:glowing 1 1 true

# summon core
function game_mode/group/get_score/summon_core_slow