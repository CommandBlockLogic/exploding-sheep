# Boss复活冷却计时
scoreboard players add Boss复活冷却 boss_4_system 1

# Boss复活百分比计算
scoreboard players operation Boss冷却百分比 boss_4_system = Boss复活冷却 boss_4_system
scoreboard players operation Boss冷却百分比 boss_4_system *= 复活百分比 boss_4_system
scoreboard players operation Boss冷却百分比 boss_4_system /= Boss复活时间 boss_4_system

execute store result bossbar minecraft:boss4 value run scoreboard players get Boss冷却百分比 boss_4_system
bossbar set minecraft:boss4 name [{"text":"羊羊之神苏醒中...","color":"white"},{"text":" (","color":"white"},{"score":{"objective":"boss_4_system","name":"Boss冷却百分比"}},{"text":"%)","color":"white"}]
bossbar set minecraft:boss4 players @a

execute as @e[tag=particle_marker] at @s run function minecraft:game_mode/single/boss/system/status_0/particle
execute if score Boss复活冷却 boss_4_system matches 331.. as @e[tag=particle_marker] at @s run tp @s ~ ~ ~ ~0.2 ~

# Boss复活 & 状态1初始化
execute if score Boss复活冷却 boss_4_system >= Boss复活时间 boss_4_system run function minecraft:game_mode/single/boss/system/status_1/init

# SB对话
execute if score Boss复活冷却 boss_4_system matches 20 run tellraw @a [{"text":"<","color":"white"},{"text":"羊羊之神","color":"yellow","bold":"false"},{"text":"> ","color":"white","bold":"false"},{"selector":"@a[tag=team_leader]"},{"text":", 你竟然敢击杀我洞穴里所有的守卫","color":"white"}]
execute if score Boss复活冷却 boss_4_system matches 40 run tellraw @a [{"text":"<","color":"white"},{"text":"羊羊之神","color":"yellow","bold":"false"},{"text":"> ","color":"white","bold":"false"},{"text":"还找来了帮凶","color":"white"},{"selector":"@a[gamemode=adventure,tag=!team_leader]"}]
execute if score Boss复活冷却 boss_4_system matches 60 run tellraw @a [{"text":"<","color":"white"},{"text":"羊羊之神","color":"yellow","bold":"false"},{"text":"> ","color":"white","bold":"false"},{"text":" 既然你们那么想死，那就让我来成全你们!","color":"white"}]