scoreboard players set 游戏状态 boss_4_system 2
tellraw @a [{"text":"<","color":"white"},{"text":"羊羊之神","color":"yellow","bold":"false"},{"text":"> ","color":"white","bold":"false"},{"text":"你们这群卑鄙的人，都去死吧！","color":"white"}]
tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"进入了暴走阶段！","color":"white"}]
tellraw @a [{"text":">>","color":"white"},{"text":" 离他太近会被扇子吹飞","color":"white"}]
tellraw @a [{"text":">>","color":"white"},{"text":" 请格外小心","color":"white"}]

kill @e[tag=boss4_sheep_new1]
kill @e[tag=boss4_sheep_new2]
kill @e[tag=boss4_sheep_new3]
kill @e[tag=boss4_skill2_marker]
scoreboard players reset 诅咒时间 boss_4_system
scoreboard players set 扇子冷却时间 boss_4_cool 0
