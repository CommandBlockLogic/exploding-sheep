# sheep:fly/move

# move
# x
execute store result score @s s_temp5 run data get entity @s Pos[0] 1000
scoreboard players operation @s s_temp5 += @s s_temp2
execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s s_temp5
execute at @s[tag=!sheep_touch_block_temp] positioned ^ ^ ^ unless block ~ ~ ~ minecraft:air run function sheep:fly/touch_x
# y
execute store result score @s s_temp5 run data get entity @s Pos[1] 1000
scoreboard players operation @s s_temp5 += @s s_temp3
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s s_temp5
execute at @s[tag=!sheep_touch_block_temp] positioned ^ ^ ^ unless block ~ ~ ~ minecraft:air run function sheep:fly/touch_y
# z
execute store result score @s s_temp5 run data get entity @s Pos[2] 1000
scoreboard players operation @s s_temp5 += @s s_temp4
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s s_temp5
execute at @s[tag=!sheep_touch_block_temp] positioned ^ ^ ^ unless block ~ ~ ~ minecraft:air run function sheep:fly/touch_z

# move back
# x
execute if entity @s[tag=sheep_touch_block_temp] store result score @s s_temp5 run data get entity @s Pos[0] 1000
execute if entity @s[tag=sheep_touch_block_temp] run scoreboard players operation @s s_temp5 -= @s s_temp2
execute if entity @s[tag=sheep_touch_block_temp] store result entity @s Pos[0] double 0.001 run scoreboard players get @s s_temp5
# y
execute if entity @s[tag=sheep_touch_block_temp] store result score @s s_temp5 run data get entity @s Pos[1] 1000
execute if entity @s[tag=sheep_touch_block_temp] run scoreboard players operation @s s_temp5 -= @s s_temp3
execute if entity @s[tag=sheep_touch_block_temp] store result entity @s Pos[1] double 0.001 run scoreboard players get @s s_temp5
# z
execute if entity @s[tag=sheep_touch_block_temp] store result score @s s_temp5 run data get entity @s Pos[2] 1000
execute if entity @s[tag=sheep_touch_block_temp] run scoreboard players operation @s s_temp5 -= @s s_temp4
execute if entity @s[tag=sheep_touch_block_temp] store result entity @s Pos[2] double 0.001 run scoreboard players get @s s_temp5