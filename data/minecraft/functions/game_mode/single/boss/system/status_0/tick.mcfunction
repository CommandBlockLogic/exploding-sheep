# Boss复活冷却计时
scoreboard players add Boss复活冷却 boss_4_system 1

# Boss复活百分比计算
scoreboard players operation Boss冷却百分比 boss_4_system = Boss复活冷却 boss_4_system
scoreboard players operation Boss冷却百分比 boss_4_system *= 复活百分比 boss_4_system
scoreboard players operation Boss冷却百分比 boss_4_system /= Boss复活时间 boss_4_system

execute store result bossbar minecraft:boss4 value run scoreboard players get Boss冷却百分比 boss_4_system
bossbar set minecraft:boss4 name [{"text":"羊羊之神苏醒中...","color":"white"},{"text":" (","color":"white"},{"score":{"objective":"boss_4_system","name":"Boss冷却百分比"}},{"text":"%)","color":"white"}]
bossbar set minecraft:boss4 players @a

execute positioned 0 13 0 run function minecraft:game_mode/single/boss/system/status_0/particle

# Boss复活 & 状态1初始化
execute if score Boss复活冷却 boss_4_system >= Boss复活时间 boss_4_system run function minecraft:game_mode/single/boss/system/status_1/init