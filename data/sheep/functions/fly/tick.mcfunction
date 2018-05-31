# sheep:fly/tick

# set force
scoreboard players set @s s_ax 0
scoreboard players set @s s_ay -50
scoreboard players set @s[tag=sheep_type_fast] s_ay 0
scoreboard players set @s s_az 0
scoreboard players operation @s s_vy += @s s_ay

# calculate split speed
function sheep:fly/split_speed
# collision
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move



# clear
tag @s[tag=sheep_touch_block_temp] remove sheep_touch_block_temp