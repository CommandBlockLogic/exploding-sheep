# core/center/block

scoreboard players add @s s_temp4 1

execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:air run summon minecraft:falling_block ~ ~ ~ {Tags:["sheep_block_sand"],Time:1}
execute if entity @s[scores={s_temp4=..10}] positioned ^ ^ ^0.5 run function core/center/block