# Boss切换装备
execute if entity @e[tag=boss1,limit=1] as @e[tag=boss1,nbt={HandItems:[{id:"minecraft:bow",Count:1b},{}]}] at @s if entity @e[type=player,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:diamond_sword{Enchantments:[{id:"minecraft:knockback",lvl:3},{id:"minecraft:sharpness",lvl:3}]}
execute if entity @e[tag=boss1,limit=1] as @e[tag=boss1,nbt={HandItems:[{id:"minecraft:diamond_sword",Count:1b},{}]}] at @s unless entity @e[type=player,distance=..7] run replaceitem entity @s weapon.mainhand minecraft:bow{Enchantments:[{id:"minecraft:punch",lvl:3},{id:"minecraft:power",lvl:3}]}

effect give @e[tag=boss1] slow_falling 10 2 true

# Boss血条颜色计算
execute if entity @e[tag=boss1,limit=1] store result score boss生命 boss_1_health run data get entity @e[tag=boss1,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss1,limit=1] run scoreboard players set 百分比 boss_1_health 100
execute if entity @e[tag=boss1,limit=1] run scoreboard players set 绿血 boss_1_health 100
execute if entity @e[tag=boss1,limit=1] run scoreboard players set 黄血 boss_1_health 67
execute if entity @e[tag=boss1,limit=1] run scoreboard players set 红血 boss_1_health 34
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 67-100 boss_1_health = boss生命 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 67-100 boss_1_health *= 绿血 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 67-100 boss_1_health /= 百分比 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 34-67 boss_1_health = boss生命 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 34-67 boss_1_health *= 黄血 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 34-67 boss_1_health /= 百分比 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 0-34 boss_1_health = boss生命 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 0-34 boss_1_health *= 红血 boss_1_health
execute if entity @e[tag=boss1,limit=1] run scoreboard players operation 0-34 boss_1_health /= 百分比 boss_1_health

# Boss血条颜色更改
execute if entity @e[tag=boss1,limit=1] store result score @e[tag=boss1,limit=1] boss_1_health run bossbar get minecraft:boss1 value
execute if entity @e[tag=boss1,limit=1] if score @e[tag=boss1,limit=1] boss_1_health >= 34-67 boss_1_health if score @e[tag=boss1,limit=1] boss_1_health <= 67-100 boss_1_health run bossbar set minecraft:boss1 color green
execute if entity @e[tag=boss1,limit=1] if score @e[tag=boss1,limit=1] boss_1_health >= 0-34 boss_1_health if score @e[tag=boss1,limit=1] boss_1_health <= 34-67 boss_1_health run bossbar set minecraft:boss1 color yellow
execute if entity @e[tag=boss1,limit=1] if score @e[tag=boss1,limit=1] boss_1_health <= 0-34 boss_1_health run bossbar set minecraft:boss1 color red

# Boss血量计算
scoreboard players operation @e[tag=boss1] boss_1_int = @e[tag=boss1,limit=1] boss_1_health
scoreboard players set 整数 boss_1_int 100
scoreboard players operation @e[tag=boss1] boss_1_int /= 整数 boss_1_int
scoreboard players operation @e[tag=boss1] boss_1_float = @e[tag=boss1,limit=1] boss_1_health
scoreboard players set 小数 boss_1_float 100
scoreboard players operation @e[tag=boss1] boss_1_float %= 小数 boss_1_float

# Boss血量显示
execute store result score @e[tag=boss1,limit=1] boss_1_max run data get entity @e[tag=boss1,limit=1] Attributes[0].Base 1
execute if entity @e[tag=boss1,limit=1] store result bossbar minecraft:boss1 max run data get entity @e[tag=boss1,limit=1] Attributes[0].Base 100
execute if entity @e[tag=boss1,limit=1] store result bossbar minecraft:boss1 value run data get entity @e[tag=boss1,limit=1] Health 100
execute if entity @e[tag=boss1] run bossbar set minecraft:boss1 name [{"selector":"@e[tag=boss1,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss1,limit=1]","objective":"boss_1_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss1,limit=1]","objective":"boss_1_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss1,limit=1]","objective":"boss_1_max"},"color":"white"},{"text":")","color":"white"}]

# Boss复活计时
scoreboard players set 复活时间 boss_1_cool 600
execute unless entity @e[tag=boss1] run scoreboard players add boss冷却 boss_1_cool 1
execute if score boss冷却 boss_1_cool >= 复活时间 boss_1_cool unless entity @e[tag=boss1] run summon minecraft:wither_skeleton 0 3 0 {HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:punch",lvl:3},{id:"minecraft:power",lvl:3}]}},{}],ArmorItems:[{id:"minecraft:diamond_boots",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:3}]}},{id:"minecraft:diamond_leggings",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:3}]}},{id:"minecraft:diamond_chestplate",Count:1,tag:{Enchantments:[{id:"minecraft:protection",lvl:3}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"HerobrineXia",Enchantments:[{id:"minecraft:protection",lvl:3}]}}],CustomName:"{\"text\":\"HerobrineXia\",\"color\":\"gold\"}",CustomNameVisible:1b,Tags:["boss1"],Attributes:[{Base:200.0d,Name:"generic.maxHealth"},{Base:50.0d,Name:"generic.followRange"}],Health:200.0f,PersistenceRequired:1b,FallFlying:1b}
execute if score boss冷却 boss_1_cool >= 复活时间 boss_1_cool run scoreboard players set boss冷却 boss_1_cool 0

# Boss复活百分比计算
scoreboard players set 百分比 boss_1_percent 100
scoreboard players operation boss冷却 boss_1_percent = boss冷却 boss_1_cool
scoreboard players operation boss冷却 boss_1_percent *= 百分比 boss_1_percent
scoreboard players operation boss冷却 boss_1_percent /= 复活时间 boss_1_cool

# Boss复活百分比显示
execute unless entity @e[tag=boss1,limit=1] run bossbar set minecraft:boss1 max 100
execute unless entity @e[tag=boss1,limit=1] run bossbar set minecraft:boss1 color purple
execute unless entity @e[tag=boss1,limit=1] store result bossbar minecraft:boss1 value run scoreboard players get boss冷却 boss_1_percent
execute unless entity @e[tag=boss1] run bossbar set minecraft:boss1 name [{"text":"Boss复活中...","color":"white"},{"text":" (","color":"white"},{"score":{"objective":"boss_1_percent","name":"boss冷却"}},{"text":"%)","color":"white"}]

# 技能
function boss_1:skill_1
function boss_1:skill_2

