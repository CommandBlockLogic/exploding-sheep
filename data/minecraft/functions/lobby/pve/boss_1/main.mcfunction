# Boss切换装备
execute if entity @e[tag=boss1,tag=monster,limit=1] as @e[tag=boss1,tag=monster,nbt={HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}]}] at @s if entity @e[type=player,gamemode=adventure,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:blaze_rod{Enchantments:[{id:"minecraft:knockback",lvl:3}]}

execute if entity @e[tag=boss1,tag=monster,limit=1] as @e[tag=boss1,tag=monster,nbt={HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}]}] at @s if entity @e[type=player,gamemode=adventure,distance=..7] run replaceitem entity @s weapon.offhand minecraft:bow{Enchantments:[{id:"minecraft:knockback",lvl:3}]}

execute if entity @e[tag=boss1,tag=monster,limit=1] as @e[tag=boss1,tag=monster,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}]}] at @s unless entity @e[type=player,gamemode=adventure,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:bow{Enchantments:[{id:"minecraft:punch",lvl:3}]}

execute if entity @e[tag=boss1,tag=monster,limit=1] as @e[tag=boss1,tag=monster,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}]}] at @s unless entity @e[type=player,gamemode=adventure,distance=..7] run replaceitem entity @s weapon.offhand minecraft:blaze_rod{Enchantments:[{id:"minecraft:punch",lvl:3}]}


effect give @e[tag=boss1,tag=monster] slow_falling 10 2 true

# Boss血条颜色计算
execute if entity @e[tag=boss1,tag=monster,limit=1] store result score boss生命 boss_1_health run data get entity @e[tag=boss1,tag=monster,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players set 百分比 boss_1_health 100
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players set 绿血 boss_1_health 100
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players set 黄血 boss_1_health 67
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players set 红血 boss_1_health 34
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 67-100 boss_1_health = boss生命 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 67-100 boss_1_health *= 绿血 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 67-100 boss_1_health /= 百分比 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 34-67 boss_1_health = boss生命 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 34-67 boss_1_health *= 黄血 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 34-67 boss_1_health /= 百分比 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 0-34 boss_1_health = boss生命 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 0-34 boss_1_health *= 红血 boss_1_health
execute if entity @e[tag=boss1,tag=monster,limit=1] run scoreboard players operation 0-34 boss_1_health /= 百分比 boss_1_health

# Boss血条颜色更改
execute if entity @e[tag=boss1,tag=monster,limit=1] store result score @e[tag=boss1,tag=monster,limit=1] boss_1_health run bossbar get minecraft:boss1 value
execute if entity @e[tag=boss1,tag=monster,limit=1] if score @e[tag=boss1,tag=monster,limit=1] boss_1_health >= 34-67 boss_1_health if score @e[tag=boss1,tag=monster,limit=1] boss_1_health <= 67-100 boss_1_health run bossbar set minecraft:boss1 color green
execute if entity @e[tag=boss1,tag=monster,limit=1] if score @e[tag=boss1,tag=monster,limit=1] boss_1_health >= 0-34 boss_1_health if score @e[tag=boss1,tag=monster,limit=1] boss_1_health <= 34-67 boss_1_health run bossbar set minecraft:boss1 color yellow
execute if entity @e[tag=boss1,tag=monster,limit=1] if score @e[tag=boss1,tag=monster,limit=1] boss_1_health <= 0-34 boss_1_health run bossbar set minecraft:boss1 color red

# Boss血量计算
scoreboard players operation @e[tag=boss1,tag=monster] boss_1_int = @e[tag=boss1,tag=monster,limit=1] boss_1_health
scoreboard players set 整数 boss_1_int 100
scoreboard players operation @e[tag=boss1,tag=monster] boss_1_int /= 整数 boss_1_int
scoreboard players operation @e[tag=boss1,tag=monster] boss_1_float = @e[tag=boss1,tag=monster,limit=1] boss_1_health
scoreboard players set 小数 boss_1_float 100
scoreboard players operation @e[tag=boss1,tag=monster] boss_1_float %= 小数 boss_1_float

# Boss血量显示
bossbar set minecraft:boss1 players @a
execute store result score @e[tag=boss1,tag=monster,limit=1] boss_1_max run data get entity @e[tag=boss1,tag=monster,limit=1] Attributes[0].Base 1
execute if entity @e[tag=boss1,tag=monster,limit=1] store result bossbar minecraft:boss1 max run data get entity @e[tag=boss1,tag=monster,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss1,tag=monster,limit=1] store result bossbar minecraft:boss1 value run data get entity @e[tag=boss1,tag=monster,limit=1] Health 100
execute if entity @e[tag=boss1,tag=monster] run bossbar set minecraft:boss1 name [{"selector":"@e[tag=boss1,tag=monster,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss1,tag=monster,limit=1]","objective":"boss_1_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss1,tag=monster,limit=1]","objective":"boss_1_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss1,tag=monster,limit=1]","objective":"boss_1_max"},"color":"white"},{"text":")","color":"white"}]

# 技能

function minecraft:lobby/pve/boss_1/skill_1
function minecraft:lobby/pve/boss_1/skill_2
function minecraft:lobby/pve/boss_1/skill_3

