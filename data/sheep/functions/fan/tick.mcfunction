# sheep:fan/tick

# wind particle
execute as @e[tag=sheep_wind] at @s run function sheep:fan/particle

# push
scoreboard players remove @e[scores={s_push_time=1..}] s_push_time 1
effect clear @e[scores={s_push_time=0}] minecraft:levitation
scoreboard players reset @e[scores={s_push_time=0}] s_push_time