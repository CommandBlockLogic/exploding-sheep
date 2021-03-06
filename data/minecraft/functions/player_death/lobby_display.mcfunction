# player_death/lobby_display

# calulate time
scoreboard players set twenty system 20
execute store result score @s system_temp1 run scoreboard players get @s death_time
scoreboard players operation @s system_temp1 /= twenty system

# display
title @s[scores={death_time=1..}] times 0 10 5
title @s[scores={death_time=1..}] title [""]
title @s[scores={death_time=1..}] subtitle ["重生时间: ",{"score":{"name":"*","objective":"system_temp1"}},"秒"]

execute unless score game_status system matches 8964 run tellraw @s[scores={death_time=1,quick_back=0}] [{"text":"## ","color":"gray","italic":true},"您已充满羊羊能量! 跳上传送石回到战场!"]