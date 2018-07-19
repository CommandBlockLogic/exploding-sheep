# lobby/pve/mini_boss

# 启用Boss Bar展示
execute if entity @e[tag=boss,limit=1] run bossbar set minecraft:boss visible true

# Boss切换装备
execute if entity @e[tag=boss,limit=1] as @e[tag=boss,nbt={HandItems:[{id:"minecraft:bow",Count:1b},{}]}] at @s if entity @e[type=player,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:diamond_sword{Enchantments:[{id:"minecraft:knockback",lvl:5}]}
execute if entity @e[tag=boss,limit=1] as @e[tag=boss,type=skeleton,nbt={HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}] at @s unless entity @e[type=player,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:bow{Enchantments:[{id:"minecraft:punch",lvl:5}]}

# Boss血条颜色计算
execute if entity @e[tag=boss,limit=1] store result score boss生命 him_boss_health run data get entity @e[tag=boss,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss,limit=1] run scoreboard players set 百分比 him_boss_health 100
execute if entity @e[tag=boss,limit=1] run scoreboard players set 绿血 him_boss_health 100
execute if entity @e[tag=boss,limit=1] run scoreboard players set 黄血 him_boss_health 67
execute if entity @e[tag=boss,limit=1] run scoreboard players set 红血 him_boss_health 34
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 67-100 him_boss_health = boss生命 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 67-100 him_boss_health *= 绿血 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 67-100 him_boss_health /= 百分比 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 34-67 him_boss_health = boss生命 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 34-67 him_boss_health *= 黄血 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 34-67 him_boss_health /= 百分比 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 0-34 him_boss_health = boss生命 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 0-34 him_boss_health *= 红血 him_boss_health
execute if entity @e[tag=boss,limit=1] run scoreboard players operation 0-34 him_boss_health /= 百分比 him_boss_health

# Boss血条颜色更改
execute if entity @e[tag=boss,limit=1] store result score @e[tag=boss,limit=1] him_boss_health run bossbar get minecraft:boss value
execute if entity @e[tag=boss,limit=1] if score @e[tag=boss,limit=1] him_boss_health >= 34-67 him_boss_health if score @e[tag=boss,limit=1] him_boss_health <= 67-100 him_boss_health run bossbar set minecraft:boss color green
execute if entity @e[tag=boss,limit=1] if score @e[tag=boss,limit=1] him_boss_health >= 0-34 him_boss_health if score @e[tag=boss,limit=1] him_boss_health <= 34-67 him_boss_health run bossbar set minecraft:boss color yellow
execute if entity @e[tag=boss,limit=1] if score @e[tag=boss,limit=1] him_boss_health <= 0-34 him_boss_health run bossbar set minecraft:boss color red

# Boss血量计算
scoreboard players operation @e[tag=boss] him_boss_int = @e[tag=boss,limit=1] him_boss_health
scoreboard players set 整数 him_boss_int 100
scoreboard players operation @e[tag=boss] him_boss_int /= 整数 him_boss_int
scoreboard players operation @e[tag=boss] him_boss_float = @e[tag=boss,limit=1] him_boss_health
scoreboard players set 小数 him_boss_float 100
scoreboard players operation @e[tag=boss] him_boss_float %= 小数 him_boss_float

# Boss血量显示
execute store result score @e[tag=boss,limit=1] him_boss_max run data get entity @e[tag=boss,limit=1] Attributes[0].Base 1
execute if entity @e[tag=boss,limit=1] store result bossbar minecraft:boss max run data get entity @e[tag=boss,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss,limit=1] store result bossbar minecraft:boss value run data get entity @e[tag=boss,limit=1] Health 100
execute if entity @e[tag=boss] run bossbar set minecraft:boss name [{"selector":"@e[tag=boss,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss,limit=1]","objective":"him_boss_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss,limit=1]","objective":"him_boss_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss,limit=1]","objective":"him_boss_max"},"color":"white"},{"text":")","color":"white"}]

# Boss复活计时
scoreboard players set 复活时间 him_boss_cool 600
execute unless entity @e[tag=boss] run scoreboard players add boss冷却 him_boss_cool 1
execute if score boss冷却 him_boss_cool >= 复活时间 him_boss_cool unless entity @e[tag=boss] run summon minecraft:skeleton ~ ~1 ~ {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:5}]}},{}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:10}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:1}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:10}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"HerobrineXia",Enchantments:[{id:"minecraft:protection",lvl:10}]}}],CustomName:"{\"text\":\"HerobrineXia\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss"],Attributes:[{Base:50.0d,Name:"generic.maxHealth"}],Health:50.0f}
execute if score boss冷却 him_boss_cool >= 复活时间 him_boss_cool run scoreboard players set boss冷却 him_boss_cool 0

# Boss复活百分比计算
scoreboard players set 百分比 him_boss_percent 100
scoreboard players operation boss冷却 him_boss_percent = boss冷却 him_boss_cool
scoreboard players operation boss冷却 him_boss_percent *= 百分比 him_boss_percent
scoreboard players operation boss冷却 him_boss_percent /= 复活时间 him_boss_cool

# Boss复活百分比显示
execute unless entity @e[tag=boss,limit=1] run bossbar set minecraft:boss max 100
execute unless entity @e[tag=boss,limit=1] run bossbar set minecraft:boss color purple
execute unless entity @e[tag=boss,limit=1] store result bossbar minecraft:boss value run scoreboard players get boss冷却 him_boss_percent
execute unless entity @e[tag=boss] run bossbar set minecraft:boss name [{"text":"Boss复活中...","color":"white"},{"text":" (","color":"white"},{"score":{"objective":"him_boss_percent","name":"boss冷却"}},{"text":"%)","color":"white"}]
