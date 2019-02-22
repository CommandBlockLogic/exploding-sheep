# Boss血量获得
bossbar set minecraft:boss4 players @a
execute store result score @e[tag=boss4,limit=1] boss_4_max run data get entity @e[tag=boss4,limit=1] Attributes[0].Base 1
execute store result bossbar minecraft:boss4 max run data get entity @e[tag=boss4,limit=1] Attributes[0].Base 100
execute store result bossbar minecraft:boss4 value run data get entity @e[tag=boss4,limit=1] Health 100


# Boss血条颜色更改
execute store result score @e[tag=boss4,limit=1] boss_4_health run bossbar get minecraft:boss4 value
execute if score @e[tag=boss4,limit=1] boss_4_health >= 34-67 boss_4_health if score @e[tag=boss4,limit=1] boss_4_health <= 67-100 boss_4_health run bossbar set minecraft:boss4 color green
execute if score @e[tag=boss4,limit=1] boss_4_health >= 0-34 boss_4_health if score @e[tag=boss4,limit=1] boss_4_health <= 34-67 boss_4_health run bossbar set minecraft:boss4 color yellow
execute if score @e[tag=boss4,limit=1] boss_4_health <= 0-34 boss_4_health run bossbar set minecraft:boss4 color red

# Boss血量计算
scoreboard players operation @e[tag=boss4] boss_4_int = @e[tag=boss4,limit=1] boss_4_health
scoreboard players set 整数 boss_4_int 100
scoreboard players operation @e[tag=boss4] boss_4_int /= 整数 boss_4_int
scoreboard players operation @e[tag=boss4] boss_4_float = @e[tag=boss4,limit=1] boss_4_health
scoreboard players set 小数 boss_4_float 100
scoreboard players operation @e[tag=boss4] boss_4_float %= 小数 boss_4_float

# Boss血量显示
execute if entity @e[tag=boss4] run bossbar set minecraft:boss4 name [{"selector":"@e[tag=boss4,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss4,limit=1]","objective":"boss_4_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss4,limit=1]","objective":"boss_4_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss4,limit=1]","objective":"boss_4_max"},"color":"white"},{"text":")","color":"white"}]

# 技能冷却
scoreboard players add 冷却时间 boss_4_cool 1
scoreboard players add 被动冷却时间 boss_4_cool 1
scoreboard players add 大招冷却时间 boss_4_cool 1

# 技能1
execute if score Boss技能 boss_4_system matches 1 if score 冷却时间 boss_4_cool matches 200 run function minecraft:game_mode/single/boss/system/status_1/skill_1
# 技能2
execute if score Boss技能 boss_4_system matches 2 if score 冷却时间 boss_4_cool matches 200 as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_1/skill_2
# 技能3
execute if score Boss技能 boss_4_system matches 3 if score 冷却时间 boss_4_cool matches 200 as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_1/skill_3
# 技能tick
function minecraft:game_mode/single/boss/system/status_1/skill_tick

# 被动
execute if score 被动冷却时间 boss_4_cool matches 50.. as @e[tag=boss4] at @s if entity @a[gamemode=adventure,distance=..50] run function minecraft:game_mode/single/boss/system/status_1/passive
# 大招
execute if score 大招冷却时间 boss_4_cool matches 1200.. as @e[tag=boss4] at @s run function minecraft:game_mode/single/boss/system/status_1/ultimate

# 冷却重置
execute if score 冷却时间 boss_4_cool matches 200 run scoreboard players set 冷却时间 boss_4_cool 0
execute if score 被动冷却时间 boss_4_cool matches 160 run scoreboard players set 被动冷却时间 boss_4_cool 0
execute if score 大招冷却时间 boss_4_cool matches 1200 run scoreboard players set 大招冷却时间 boss_4_cool 0

# 阶段变换
execute if score @e[tag=boss4,limit=1] boss_4_health <= 50血量 boss_4_health run function minecraft:game_mode/single/boss/system/status_2/init
