# ready/tick

# display
execute store result score game_temp system run scoreboard players get game_ready_timer system
scoreboard players set game_const system 20
scoreboard players operation game_temp system /= game_const system
scoreboard players set game_const system 10
scoreboard players operation game_temp system -= game_const system
scoreboard players set game_const system -1
scoreboard players operation game_temp system *= game_const system
execute store result score 距游戏开始时间 display run scoreboard players get game_temp system

# add ready timer
scoreboard players add game_ready_timer system 1
execute if score game_ready_timer system matches 200..999 run function ingame/main

# keep item
function minecraft:item/tick
