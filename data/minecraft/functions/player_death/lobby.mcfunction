# player_death/lobby

# clear
scoreboard players set @s death2 0

# cal sceond
scoreboard players set twenty system 20
execute store result score @s system_temp1 run scoreboard players get @s death_time
scoreboard players operation @s system_temp1 /= twenty system
# hint
execute if score @s system_temp1 matches 0 run tellraw @s [">> 您已重生, 踩上石块加入游戏!"]
execute if score @s system_temp1 matches 1.. run tellraw @s [">> 等待",{"score":{"name":"*","objective":"system_temp1"}},"秒后, 踩上石块加入游戏!"]