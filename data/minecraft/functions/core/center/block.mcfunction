# core/center/block

scoreboard players add @s s_temp4 1
execute align xyz positioned ~ ~-20 ~ if entity @e[tag=system_core_mark_center,dx=0,dy=20,dz=0] run scoreboard players set @s s_temp4 100

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air unless entity @e[tag=sheep_block_sand,distance=..0.1] run function core/center/types
execute if entity @s[scores={s_temp4=..25}] positioned ^ ^ ^0.5 run function core/center/block