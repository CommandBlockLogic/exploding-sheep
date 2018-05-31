# sheep:fly/tick

# set force
scoreboard players set @s s_ax 0
scoreboard players set @s s_ay -50
scoreboard players set @s[tag=sheep_type_fast] s_ay 0
scoreboard players set @s s_az 0
scoreboard players operation @s s_vy += @s s_ay

# calculate split speed
scoreboard players set @s s_temp1 5
execute store result score @s s_temp2 run scoreboard players get @s s_vx
execute store result score @s s_temp3 run scoreboard players get @s s_vy
execute store result score @s s_temp4 run scoreboard players get @s s_vz
scoreboard players operation @s s_temp2 /= @s s_temp1
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp4 /= @s s_temp1
# collision
execute if entity @s[tag=!sheep_touch_block_temp] run function sheep:fly/move
execute if entity @s[tag=!sheep_touch_block_temp] run function sheep:fly/move
execute if entity @s[tag=!sheep_touch_block_temp] run function sheep:fly/move
execute if entity @s[tag=!sheep_touch_block_temp] run function sheep:fly/move
execute if entity @s[tag=!sheep_touch_block_temp] run function sheep:fly/move



# clear
tag @s[tag=sheep_touch_block_temp] remove sheep_touch_block_temp