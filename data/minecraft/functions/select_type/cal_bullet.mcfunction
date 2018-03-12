# select_type/cal_bullet

scoreboard players set @s s_max_bullet 8
scoreboard players remove @s[tag=sheep_own_heavy] s_max_bullet 1
scoreboard players remove @s[tag=sheep_own_fast] s_max_bullet 1
scoreboard players remove @s[tag=sheep_own_air] s_max_bullet 1
scoreboard players remove @s[tag=sheep_own_web] s_max_bullet 1
scoreboard players remove @s[tag=sheep_own_heal] s_max_bullet 1

execute if score @s s_bullet > @s s_max_bullet run scoreboard players operation @s s_bullet = @s s_max_bullet