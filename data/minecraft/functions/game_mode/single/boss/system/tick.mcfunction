# Boss血条颜色更改
execute store result score @e[tag=boss4,limit=1] boss_4_health run bossbar get minecraft:boss1 value
execute if score @e[tag=boss4,limit=1] boss_4_health >= 34-67 boss_4_health if score @e[tag=boss4,limit=1] boss_4_health <= 67-100 boss_4_health run bossbar set minecraft:boss1 color green
execute if score @e[tag=boss4,limit=1] boss_4_health >= 0-34 boss_4_health if score @e[tag=boss4,limit=1] boss_4_health <= 34-67 boss_4_health run bossbar set minecraft:boss1 color yellow
execute if score @e[tag=boss4,limit=1] boss_4_health <= 0-34 boss_4_health run bossbar set minecraft:boss1 color red

# Boss血量计算
scoreboard players operation @e[tag=boss1,tag=monster] boss_4_int = @e[tag=boss4,limit=1] boss_4_health
scoreboard players set 整数 boss_4_int 100
scoreboard players operation @e[tag=boss1,tag=monster] boss_4_int /= 整数 boss_4_int
scoreboard players operation @e[tag=boss1,tag=monster] boss_4_float = @e[tag=boss4,limit=1] boss_4_health
scoreboard players set 小数 boss_4_float 100
scoreboard players operation @e[tag=boss1,tag=monster] boss_4_float %= 小数 boss_4_float

# Boss血量显示
bossbar set minecraft:boss4 players @a
execute store result score @e[tag=boss4,limit=1] boss_4_max run data get entity @e[tag=boss4,limit=1] Attributes[0].Base 1
execute store result bossbar minecraft:boss1 max run data get entity @e[tag=boss4,limit=1] Attributes[0].Base 100
execute store result bossbar minecraft:boss1 value run data get entity @e[tag=boss4,limit=1] Health 100
execute if entity @e[tag=boss1,tag=monster] run bossbar set minecraft:boss1 name [{"selector":"@e[tag=boss4,limit=1]","color":"white"},{"text":" (","color":"white"},{"score":{"name":"@e[tag=boss4,limit=1]","objective":"boss_4_int"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"@e[tag=boss4,limit=1]","objective":"boss_4_float"},"color":"white"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=boss4,limit=1]","objective":"boss_4_max"},"color":"white"},{"text":")","color":"white"}]