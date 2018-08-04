# Boss复活冷却计时
scoreboard players add Boss复活冷却 pve_system 1

# Boss复活百分比计算
scoreboard players operation Boss冷却百分比 pve_system = Boss复活冷却 pve_system
scoreboard players operation Boss冷却百分比 pve_system *= 复活百分比 pve_system
scoreboard players operation Boss冷却百分比 pve_system /= Boss复活时间 pve_system

# Boss血量隐藏
bossbar set minecraft:boss1 players
bossbar set minecraft:boss2 players
bossbar set minecraft:boss3 players
bossbar set minecraft:boss4 players

# 清除AS
kill @e[tag=boss_1_summon_1]
execute as @e[type=minecraft:armor_stand,tag=boss_1_summon_2] at @s run fill ~ ~ ~ ~ ~1 ~ air replace cobweb
kill @e[tag=boss_1_summon_2]
kill @e[tag=boss_1_summon_3]
tag @a remove boss_1_skill_3_target
kill @e[tag=boss_1_skill_2]
kill @e[tag=boss_1_skill_2_1]
kill @e[tag=boss_1_skill_2_2]
kill @e[tag=boss_1_skill_2_3]
kill @e[tag=boss_1_skill_2_4]

kill @e[tag=boss_2_summon_1]
kill @e[tag=boss_2_skill_2]
kill @e[tag=boss_2_skill_3]
kill @e[tag=fake_boss2]


kill @e[tag=boss_3_summon_1]
kill @e[tag=boss_3_skill_1_1]
kill @e[tag=boss_3_skill_2]
kill @e[tag=boss_3_skill_3]



# Boss复活百分比显示
bossbar set minecraft:boss_cool players @a
bossbar set minecraft:boss_cool max 100
bossbar set minecraft:boss_cool color purple
execute store result bossbar minecraft:boss_cool value run scoreboard players get Boss冷却百分比 pve_system
bossbar set minecraft:boss_cool name [{"text":"Boss复活中...","color":"white"},{"text":" (","color":"white"},{"score":{"objective":"pve_system","name":"Boss冷却百分比"}},{"text":"%)","color":"white"}]