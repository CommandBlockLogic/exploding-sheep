# ingame_cup/tick

# ingame gaming
function ingame/gaming

# change appearence
execute if score game_hp_cup system matches 30..44 if score game_cup_phase system matches 1..1 run function ingame_cup/cup/red2
execute if score game_hp_cup system matches 30..44 if score game_cup_phase system matches 1..1 run scoreboard players set game_cup_phase system 2

execute if score game_hp_cup system matches 15..29 if score game_cup_phase system matches 2..2 run function ingame_cup/cup/red3
execute if score game_hp_cup system matches 15..29 if score game_cup_phase system matches 2..2 run scoreboard players set game_cup_phase system 3

execute if score game_hp_cup system matches 0..14 if score game_cup_phase system matches 3..3 run function ingame_cup/cup/red4
execute if score game_hp_cup system matches 0..14 if score game_cup_phase system matches 3..3 run scoreboard players set game_cup_phase system 4

execute if score game_hp_cup system matches -9999..-1 if score game_cup_phase system matches 4..4 run function ingame_cup/cup/red5
execute if score game_hp_cup system matches -9999..-1 if score game_cup_phase system matches 4..4 run scoreboard players set game_cup_phase system 5

execute if score game_hp_cup system matches 30..44 if score game_cup_phase system matches 6..6 run function ingame_cup/cup/blue2
execute if score game_hp_cup system matches 30..44 if score game_cup_phase system matches 6..6 run scoreboard players set game_cup_phase system 7

execute if score game_hp_cup system matches 15..29 if score game_cup_phase system matches 7..7 run function ingame_cup/cup/blue3
execute if score game_hp_cup system matches 15..29 if score game_cup_phase system matches 7..7 run scoreboard players set game_cup_phase system 8

execute if score game_hp_cup system matches 0..14 if score game_cup_phase system matches 8..8 run function ingame_cup/cup/blue4
execute if score game_hp_cup system matches 0..14 if score game_cup_phase system matches 8..8 run scoreboard players set game_cup_phase system 9

execute if score game_hp_cup system matches -9999..-1 if score game_cup_phase system matches 9..9 run function ingame_cup/cup/blue5
execute if score game_hp_cup system matches -9999..-1 if score game_cup_phase system matches 9..9 run scoreboard players set game_cup_phase system 10

particle minecraft:smoke 55.38 41.00 51.36 2 0 2 0 100

# add time
scoreboard players add game_cup_timer system 1

# display
execute store result score game_temp system run scoreboard players get game_cup_timer system
scoreboard players set game_const system 2400
scoreboard players operation game_temp system -= game_const system
scoreboard players set game_const system -1
scoreboard players operation game_temp system *= game_const system
scoreboard players set game_const system 20
scoreboard players operation game_temp system /= game_const system
execute store result score 祭祀剩余时间 display run scoreboard players get game_temp system

execute store result score game_temp system run scoreboard players get game_hp_cup system
scoreboard players set game_const system 100
scoreboard players operation game_temp system *= game_const system
scoreboard players operation game_temp system /= game_hp_cup_max system
execute store result score 祭祀进度(%) display run scoreboard players get game_temp system

# next phase
execute if score game_cup_phase system matches 5..5 run function ingame_cup/finish
execute if score game_cup_phase system matches 10..10 run function ingame_cup/finish
execute if score game_cup_timer system matches 2400..9999 run function ingame_cup/timeup