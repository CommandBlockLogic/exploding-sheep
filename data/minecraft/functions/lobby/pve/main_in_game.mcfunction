# 取消所有计分板显示
bossbar set minecraft:boss1 players
bossbar set minecraft:boss2 players
bossbar set minecraft:boss3 players
bossbar set minecraft:boss_player players
bossbar set minecraft:boss_cool players

# 删除所有boss和生物
kill @e[tag=monster]
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

# 清除玩家击中 BOSS mark
tag @a[tag=spg_hit_boss_player] remove spg_hit_boss_player
