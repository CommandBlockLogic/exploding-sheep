# player_death/lobby

# clear
scoreboard players set @s death2 0
scoreboard players set @s death_time_tp 1

# cal sceond
scoreboard players set twenty system 20
execute store result score @s system_temp1 run scoreboard players get @s death_time
scoreboard players operation @s system_temp1 /= twenty system
# hint
execute if score game_status system matches 1.. unless score game_status system matches 8964 unless score game_status system matches 5 if score @s system_temp1 matches 0 run tellraw @s [{"text":"## ","color":"gray","italic":true},"您已充满羊羊能量! 跳上传送石回到战场!"]
execute if score @s system_temp1 matches 1.. run tellraw @s [{"text":"## ","color":"gray","italic":true},"等待",{"score":{"name":"*","objective":"system_temp1"}},"秒补充羊羊能量后, 跳上传送石回到战场!"]