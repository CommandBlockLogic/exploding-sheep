# core/center/block

execute positioned ~ ~-30 ~ if entity @e[tag=system_core_mark_center,dx=0,dy=30,dz=0] run tag @s add end_summon

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:falling_block ~ ~ ~ {Tags:["sheep_block_sand"],Time:1}
execute if entity @s[tag=!end_summon] positioned ^ ^ ^0.5 run function core/center/block