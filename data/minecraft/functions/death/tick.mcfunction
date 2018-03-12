# death/tick

scoreboard players remove @s respawn_time 1

scoreboard players set @s s_temp1 20
scoreboard players operation @s s_temp2 = @s respawn_time
scoreboard players operation @s s_temp2 /= @s s_temp1

title @s times 0 20 0
title @s title ["略~~~"]
title @s subtitle [{"score":{"name":"@s","objective":"s_temp2"}},"秒后重生"]

execute as @s[scores={respawn_time=..0}] run function minecraft:death/respawn