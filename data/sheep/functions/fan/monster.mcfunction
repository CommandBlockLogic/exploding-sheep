# sheep:fan/monster

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @a[tag=sheep_fanning,limit=1] s_temp2
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @a[tag=sheep_fanning,limit=1] s_temp3
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @a[tag=sheep_fanning,limit=1] s_temp4