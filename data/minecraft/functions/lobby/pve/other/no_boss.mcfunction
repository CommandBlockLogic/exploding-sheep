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

# 击杀奖励
execute store result score 击杀人数 pve_system run execute if entity @a[tag=spg_hit_boss_player]
## 击杀提示
execute if score 击杀人数 pve_system matches 1 if score Boss编号 pve_system matches 1 run tellraw @a ["",{"selector":"@a[tag=spg_hit_boss_player]"},"仅凭一己之力就击杀了邪恶的","\u00a7c法师"]
execute if score 击杀人数 pve_system matches 1 if score Boss编号 pve_system matches 2 run tellraw @a ["",{"selector":"@a[tag=spg_hit_boss_player]"},"仅凭一己之力就击杀了邪恶的","\u00a7c召唤师"]
execute if score 击杀人数 pve_system matches 1 if score Boss编号 pve_system matches 2 run tellraw @a ["",{"selector":"@a[tag=spg_hit_boss_player]"},"仅凭一己之力就击杀了邪恶的","\u00a7c泰坦"]
execute if score 击杀人数 pve_system matches 2.. if score Boss编号 pve_system matches 1 run tellraw @a ["",{"selector":"@a[tag=spg_hit_boss_player]"},"共同击杀了邪恶的","\u00a7c法师"]
execute if score 击杀人数 pve_system matches 2.. if score Boss编号 pve_system matches 2 run tellraw @a ["",{"selector":"@a[tag=spg_hit_boss_player]"},"共同击杀了邪恶的","\u00a7c召唤师"]
execute if score 击杀人数 pve_system matches 2.. if score Boss编号 pve_system matches 2 run tellraw @a ["",{"selector":"@a[tag=spg_hit_boss_player]"},"共同击杀了邪恶的","\u00a7c泰坦"]
## 进度奖励
execute if score Boss编号 pve_system matches 1 run advancement grant @a[tag=spg_hit_boss_player] until sheep:pve/1
execute if score Boss编号 pve_system matches 2 run advancement grant @a[tag=spg_hit_boss_player] until sheep:pve/2
execute if score Boss编号 pve_system matches 3 run advancement grant @a[tag=spg_hit_boss_player] until sheep:pve/3

tag @a[tag=spg_hit_boss_player] remove spg_hit_boss_player