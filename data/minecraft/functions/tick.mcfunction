# tick

# mode
scoreboard players add game_phase system 0
execute if score game_phase system matches 0..0 run function minecraft:lobby/tick
execute if score game_phase system matches 1..1 run function minecraft:ready/tick
execute if score game_phase system matches 2..2 run function minecraft:ingame/tick
execute if score game_phase system matches 3..3 run function minecraft:ingame_cup/tick
execute if score game_phase system matches 4..4 run function minecraft:ingame_after/tick
execute if score game_phase system matches 5..5 run function minecraft:end/tick
#execute if score game_phase system matches 3 run function minecraft:end/tick

# effect
effect give @a minecraft:saturation 1 1