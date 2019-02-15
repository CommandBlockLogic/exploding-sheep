# 黄
execute as @e[tag=boss4] at @s facing entity @e[gamemode=adventure,sort=nearest,limit=1] feet run function minecraft:game_mode/single/boss/system/status_1/skill_1_launch
# 白
execute as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_1/passive
# 蓝
execute as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_2/skill_2_launch
# 红
execute as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch

tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"召唤了","color":"white"},{"text":"4种羊羊","color":"gold"},{"text":"快逃离他的羊羊","color":"white"}]

scoreboard players set Boss技能 boss_4_system 3
scoreboard players set 冷却时间 boss_4_cool 0
