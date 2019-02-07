# lobby/enter_game_fail

scoreboard players set twenty system 20
execute store result score @s system_temp1 run scoreboard players get @s death_time
scoreboard players operation @s system_temp1 /= twenty system
tag @s add player_enter_game

tellraw @s[scores={system_temp1=1..}] [{"text":"## ","color":"gray","italic":true},"请稍等",{"score":{"name":"*","objective":"system_temp1"}},"秒补充羊羊能量!"]