# sheep:fan/particle

scoreboard players add @s s_wind_time 1
tp @s ^ ^ ^1.3
execute at @s[scores={s_wind_time=1}] run particle minecraft:cloud ^ ^ ^ 0.6 0.6 0.6 0.01 3
execute at @s[scores={s_wind_time=2}] run particle minecraft:cloud ^ ^ ^ 0.8 0.8 0.8 0.01 3
execute at @s[scores={s_wind_time=3}] run particle minecraft:cloud ^ ^ ^ 1 1 1 0.01 3
execute at @s[scores={s_wind_time=4}] run particle minecraft:cloud ^ ^ ^ 1.25 1.25 1.25 0.01 3
execute at @s[scores={s_wind_time=5}] run particle minecraft:cloud ^ ^ ^ 1.5 1.5 1.5 0.01 3
kill @s[scores={s_wind_time=5..}]