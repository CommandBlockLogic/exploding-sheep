execute as @e[tag=boss4] at @s positioned ^-2 ^2 ^ run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch
execute as @e[tag=boss4] at @s positioned ^-1 ^2 ^ run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch
execute as @e[tag=boss4] at @s positioned ^0 ^2 ^ run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch
execute as @e[tag=boss4] at @s positioned ^1 ^2 ^ run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch
execute as @e[tag=boss4] at @s positioned ^2 ^2 ^ run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch
tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"红色羊羊","color":"red"},{"text":"，快逃离它的身旁!","color":"white"}]

scoreboard players set 冷却时间 boss_4_cool 0
scoreboard players set Boss技能 boss_4_system 1
