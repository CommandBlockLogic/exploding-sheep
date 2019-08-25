# death_match/tick

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

# display score
execute as @a[team=yellow] if score @s kill_player matches 1.. run scoreboard players operation @s kill_player *= system_ten system
execute as @a[team=yellow] if score @s kill_player matches ..-1 run scoreboard players operation @s kill_player *= system_five system
execute as @a[team=yellow] run scoreboard players operation @s sidebar_score += @s kill_player
scoreboard players set @a[team=yellow] kill_player 0

# check end
execute if score system_game_time system matches ..0 run function game_mode/single/death_match/end

