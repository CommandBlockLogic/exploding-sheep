# Boss切换装备
execute if entity @e[tag=boss3,tag=monster,limit=1] as @e[tag=boss3,tag=monster,nbt={HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}]}] at @s if entity @e[type=player,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:blaze_rod{Enchantments:[{id:"minecraft:knockback",lvl:3}]}

execute if entity @e[tag=boss3,tag=monster,limit=1] as @e[tag=boss3,tag=monster,nbt={HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3}]}}]}] at @s if entity @e[type=player,distance=..7] run replaceitem entity @s weapon.offhand minecraft:bow{Enchantments:[{id:"minecraft:knockback",lvl:3}]}

execute if entity @e[tag=boss3,tag=monster,limit=1] as @e[tag=boss3,tag=monster,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}]}] at @s unless entity @e[type=player,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:bow{Enchantments:[{id:"minecraft:punch",lvl:3}]}

execute if entity @e[tag=boss3,tag=monster,limit=1] as @e[tag=boss3,tag=monster,nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3}]}}]}] at @s unless entity @e[type=player,distance=..7] run replaceitem entity @s weapon.offhand minecraft:blaze_rod{Enchantments:[{id:"minecraft:punch",lvl:3}]}

kill @e[type=trident,nbt={inGround:1b}]

# Boss血条颜色计算
execute if entity @e[tag=boss3,tag=monster,limit=1] store result score boss生命 boss_3_health run data get entity @e[tag=boss3,tag=monster,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players set 百分比 boss_3_health 100
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players set 绿血 boss_3_health 100
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players set 黄血 boss_3_health 67
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players set 红血 boss_3_health 34
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 67-100 boss_3_health = boss生命 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 67-100 boss_3_health *= 绿血 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 67-100 boss_3_health /= 百分比 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 34-67 boss_3_health = boss生命 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 34-67 boss_3_health *= 黄血 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 34-67 boss_3_health /= 百分比 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 0-34 boss_3_health = boss生命 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 0-34 boss_3_health *= 红血 boss_3_health
execute if entity @e[tag=boss3,tag=monster,limit=1] run scoreboard players operation 0-34 boss_3_health /= 百分比 boss_3_health

# Boss血条颜色更改
execute if entity @e[tag=boss3,tag=monster,limit=1] store result score @e[tag=boss3,tag=monster,limit=1] boss_3_health run bossbar get minecraft:boss3 value
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 34-67 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 67-100 boss_3_health run bossbar set minecraft:boss3 color green
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 0-34 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 34-67 boss_3_health run bossbar set minecraft:boss3 color yellow
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 0-34 boss_3_health run bossbar set minecraft:boss3 color red

# Boss 状态
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 34-67 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 67-100 boss_3_health run tag @e[tag=boss3] add boss3_green
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 34-67 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 67-100 boss_3_health run tag @e[tag=boss3] remove boss3_yellow
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 34-67 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 67-100 boss_3_health run tag @e[tag=boss3] remove boss3_red


execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 0-34 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 34-67 boss_3_health run tag @e[tag=boss3] add boss3_yellow
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 0-34 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 34-67 boss_3_health run tag @e[tag=boss3] remove boss3_green
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health >= 0-34 boss_3_health if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 34-67 boss_3_health run tag @e[tag=boss3] remove boss3_red


execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 0-34 boss_3_health run tag @e[tag=boss3] add boss3_red
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 0-34 boss_3_health run tag @e[tag=boss3] remove boss3_yellow
execute if entity @e[tag=boss3,tag=monster,limit=1] if score @e[tag=boss3,tag=monster,limit=1] boss_3_health <= 0-34 boss_3_health run tag @e[tag=boss3] remove boss3_green

# Boss血量计算
scoreboard players operation @e[tag=boss3,tag=monster] boss_3_int = @e[tag=boss3,tag=monster,limit=1] boss_3_health
scoreboard players set 整数 boss_3_int 100
scoreboard players operation @e[tag=boss3,tag=monster] boss_3_int /= 整数 boss_3_int
scoreboard players operation @e[tag=boss3,tag=monster] boss_3_float = @e[tag=boss3,tag=monster,limit=1] boss_3_health
scoreboard players set 小数 boss_3_float 100
scoreboard players operation @e[tag=boss3,tag=monster] boss_3_float %= 小数 boss_3_float

# Boss血量显示
bossbar set minecraft:boss3 players @a
execute store result score @e[tag=boss3,tag=monster,limit=1] boss_3_max run data get entity @e[tag=boss3,tag=monster,limit=1] Attributes[0].Base 1
execute if entity @e[tag=boss3,tag=monster,limit=1] store result bossbar minecraft:boss3 max run data get entity @e[tag=boss3,tag=monster,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss3,tag=monster,limit=1] store result bossbar minecraft:boss3 value run data get entity @e[tag=boss3,tag=monster,limit=1] Health 100
execute if entity @e[tag=boss3,tag=monster] run bossbar set minecraft:boss3 name [{"selector":"@e[tag=boss3,tag=monster,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss3,tag=monster,limit=1]","objective":"boss_3_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss3,tag=monster,limit=1]","objective":"boss_3_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss3,tag=monster,limit=1]","objective":"boss_3_max"},"color":"white"},{"text":")","color":"white"}]

# 技能
execute if entity @e[tag=boss3,tag=boss3_green] run function minecraft:lobby/pve/boss_3/skill_1
execute if entity @e[tag=boss3,tag=boss3_yellow] run function minecraft:lobby/pve/boss_3/skill_2
execute if entity @e[tag=boss3,tag=boss3_red] run function minecraft:lobby/pve/boss_3/skill_3



