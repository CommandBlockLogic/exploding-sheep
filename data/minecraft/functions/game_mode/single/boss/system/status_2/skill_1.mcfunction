execute as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_2/skill_1_launch

tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"黑色羊羊","color":"black"},{"text":", 小心被他传送到旁边","color":"white"}]


scoreboard players set 冷却时间 boss_4_cool 0
scoreboard players set Boss技能 boss_4_system 2
