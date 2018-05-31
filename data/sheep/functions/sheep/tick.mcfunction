# sheep:sheep/tick

# normal sheep
execute as @e[tag=sheep_sheep] run function sheep:fly/tick

# fast sheep
#execute as @e[tag=sheep_type_fast] store result entity @s Motion[0] double 0.001 run scoreboard players get @s s_vx
#execute as @e[tag=sheep_type_fast] store result entity @s Motion[1] double 0.001 run scoreboard players get @s s_vy
#execute as @e[tag=sheep_type_fast] store result entity @s Motion[2] double 0.001 run scoreboard players get @s s_vz

# web
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
execute as @e[scores={s_web_time=1}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:cobweb keep
execute as @e[scores={s_web_time=1}] at @s run particle block cobweb ~ ~0.5 ~ 2 0 2 0 200
execute as @e[scores={s_web_time=101..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:cobweb
kill @e[scores={s_web_time=101..}]