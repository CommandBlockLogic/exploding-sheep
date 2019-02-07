kill @e[type=vex]
execute as @e[tag=boss2,tag=real_boss2,type=minecraft:evoker,nbt=!{SpellTicks:0}] run data merge entity @s {SpellTicks:99}

effect give @e[tag=boss2,tag=real_boss2,tag=monster] slow_falling 10 2 true

# Boss血条颜色计算
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] store result score boss生命 boss_2_health run data get entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players set 百分比 boss_2_health 100
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players set 绿血 boss_2_health 100
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players set 黄血 boss_2_health 67
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players set 红血 boss_2_health 34
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 67-100 boss_2_health = boss生命 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 67-100 boss_2_health *= 绿血 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 67-100 boss_2_health /= 百分比 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 34-67 boss_2_health = boss生命 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 34-67 boss_2_health *= 黄血 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 34-67 boss_2_health /= 百分比 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 0-34 boss_2_health = boss生命 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 0-34 boss_2_health *= 红血 boss_2_health
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] run scoreboard players operation 0-34 boss_2_health /= 百分比 boss_2_health

# Boss血条颜色更改
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] store result score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health run bossbar get minecraft:boss2 value
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] if score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health >= 34-67 boss_2_health if score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health <= 67-100 boss_2_health run bossbar set minecraft:boss2 color green
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] if score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health >= 0-34 boss_2_health if score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health <= 34-67 boss_2_health run bossbar set minecraft:boss2 color yellow
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] if score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health <= 0-34 boss_2_health run bossbar set minecraft:boss2 color red

# Boss血量计算
scoreboard players operation @e[tag=boss2,tag=real_boss2,tag=monster] boss_2_int = @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health
scoreboard players set 整数 boss_2_int 100
scoreboard players operation @e[tag=boss2,tag=real_boss2,tag=monster] boss_2_int /= 整数 boss_2_int
scoreboard players operation @e[tag=boss2,tag=real_boss2,tag=monster] boss_2_float = @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_health
scoreboard players set 小数 boss_2_float 100
scoreboard players operation @e[tag=boss2,tag=real_boss2,tag=monster] boss_2_float %= 小数 boss_2_float

# Boss血量显示
bossbar set minecraft:boss2 players @a
execute store result score @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] boss_2_max run data get entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] Attributes[0].Base 1
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] store result bossbar minecraft:boss2 max run data get entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] store result bossbar minecraft:boss2 value run data get entity @e[tag=boss2,tag=real_boss2,tag=monster,limit=1] Health 100
execute if entity @e[tag=boss2,tag=real_boss2,tag=monster] run bossbar set minecraft:boss2 name [{"selector":"@e[tag=boss2,tag=real_boss2,tag=monster,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss2,tag=real_boss2,tag=monster,limit=1]","objective":"boss_2_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss2,tag=real_boss2,tag=monster,limit=1]","objective":"boss_2_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss2,tag=real_boss2,tag=monster,limit=1]","objective":"boss_2_max"},"color":"white"},{"text":")","color":"white"}]

function minecraft:lobby/pve/boss_2/passive
function minecraft:lobby/pve/boss_2/skill_1
function minecraft:lobby/pve/boss_2/skill_2
function minecraft:lobby/pve/boss_2/skill_3
