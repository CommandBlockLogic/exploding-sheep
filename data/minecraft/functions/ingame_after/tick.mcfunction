# ingame_after/tick

# ingame gaming
function ingame/gaming

# add time
execute if score game_cup_phase system matches 5..5 run scoreboard players add game_after_timer system 1
execute if score game_cup_phase system matches 10..10 run scoreboard players add game_after_timer system 1

# blow effect
execute if score game_after_timer system matches 0..3000 if score game_cup_phase system matches 5..5 run tag @e[tag=sheep_sheep,tag=!sheep_effect_big,team=red] add sheep_effect_big
execute if score game_after_timer system matches 0..3000 if score game_cup_phase system matches 10..10 run tag @e[tag=sheep_sheep,tag=!sheep_effect_big,team=blue] add sheep_effect_big

# message
execute if score game_after_timer system matches 3000..3000 if score game_cup_phase system matches 10..10 run tellraw @a [">> Buff时间结束."]
execute if score game_after_timer system matches 3000..3000 if score game_cup_phase system matches 5..5 run tellraw @a [">> Buff时间结束."]
# del cup
execute if score game_after_timer system matches 3000..3000 if score game_cup_phase system matches 10..10 run function ingame_cup/cup/del
execute if score game_after_timer system matches 3000..3000 if score game_cup_phase system matches 5..5 run function ingame_cup/cup/del

# remove timer
execute if score game_after_timer system matches 3000..3000 run scoreboard players reset game_after_timer system

# display
execute store result score game_temp system run scoreboard players get game_after_timer system
scoreboard players set game_const system 3000
scoreboard players operation game_temp system -= game_const system
scoreboard players set game_const system -1
scoreboard players operation game_temp system *= game_const system
scoreboard players set game_const system 20
scoreboard players operation game_temp system /= game_const system
execute if score game_cup_phase system matches 5..5 store result score BUFF剩余时间 display run scoreboard players get game_temp system
execute if score game_cup_phase system matches 10..10 store result score BUFF剩余时间 display run scoreboard players get game_temp system