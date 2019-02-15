## Skill 1
# tp
execute as @e[tag=boss4] at @s run tp @e[type=sheep,tag=boss4_skill1_sheep1,limit=1] ^2 ^2 ^
execute as @e[tag=boss4] at @s run tp @e[type=sheep,tag=boss4_skill1_sheep2,limit=1] ^-2 ^2 ^
execute as @e[tag=boss4] at @s run tp @e[type=sheep,tag=boss4_skill1_sheep3,limit=1] ^ ^2 ^

# 发射等待
scoreboard players add @e[type=sheep,tag=boss4_sheep_new1] boss_4_cool 1
execute as @e[type=sheep,tag=boss4_sheep_new1,scores={boss_4_cool=180..}] at @s facing entity @e[gamemode=adventure,sort=nearest,limit=1] feet run function minecraft:game_mode/single/boss/system/status_1/skill_1_launch
execute as @e[type=sheep,tag=boss4_sheep_new1,scores={boss_4_cool=180..}] at @s run tp @s ~ -100 ~
execute as @e[type=sheep,tag=boss4_sheep_new1,scores={boss_4_cool=180..}] at @s run kill @s

## Skill 2
# Marker
execute if entity @e[type=sheep,tag=boss4_sheep_new2] unless entity @e[type=armor_stand,tag=boss4_skill2_marker] at @e[tag=boss4,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["boss4_skill2_marker"],Invisible:1b,NoGravity:1b,Marker:1b}
execute unless entity @e[type=sheep,tag=boss4_sheep_new2] as @e[type=armor_stand,tag=boss4_skill2_marker] run kill @s 

# tp
execute at @e[tag=boss4,limit=1] run tp @e[type=armor_stand,tag=boss4_skill2_marker] ~ ~ ~
execute as @e[tag=boss4_skill2_marker] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[tag=boss4_skill2_marker] at @s run tp @e[type=sheep,tag=boss4_skill2_sheep1,limit=1] ^2 ^ ^
execute as @e[tag=boss4_skill2_marker] at @s run tp @e[type=sheep,tag=boss4_skill2_sheep2,limit=1] ^-2 ^ ^
execute as @e[tag=boss4_skill2_marker] at @s run tp @e[type=sheep,tag=boss4_skill2_sheep3,limit=1] ^ ^ ^2
execute as @e[tag=boss4_skill2_marker] at @s run tp @e[type=sheep,tag=boss4_skill2_sheep4,limit=1] ^ ^ ^-2

# 发射等待
scoreboard players add @e[type=sheep,tag=boss4_sheep_new2] boss_4_cool 1
execute as @e[type=sheep,tag=boss4_sheep_new2,scores={boss_4_cool=100..}] at @s run function minecraft:game_mode/single/boss/system/status_1/skill_2_launch
execute as @e[type=sheep,tag=boss4_sheep_new2,scores={boss_4_cool=100..}] at @s run tp @s ~ -100 ~
execute as @e[type=sheep,tag=boss4_sheep_new2,scores={boss_4_cool=100..}] at @s run kill @s

## Skill 3
# 时间
execute if score 诅咒时间 boss_4_system matches 1.. run scoreboard players set @a[gamemode=adventure] s_energy 0
execute if score 诅咒时间 boss_4_system matches 1.. run scoreboard players remove 诅咒时间 boss_4_system 1
execute if score 诅咒时间 boss_4_system matches 0 run scoreboard players set @a[gamemode=adventure] s_energy 200
execute if score 诅咒时间 boss_4_system matches 0 run tellraw @a [{"text":">>","color":"white"},{"text":" 羊羊之神","color":"gold"},{"text":"诅咒解除了！","color":"white"}]

execute if score 诅咒时间 boss_4_system matches 0 run scoreboard players reset 诅咒时间 boss_4_system

## Ultimate
# 时间
scoreboard players add @e[tag=boss4_sheep_new3,type=sheep] boss_4_cool 1
scoreboard players add @e[tag=boss4_sheep_new3,type=sheep] boss_4_system 1
execute as @e[tag=boss4_sheep_new3,type=sheep,scores={boss_4_system=100..}] at @s run function minecraft:game_mode/single/boss/system/status_1/passive
execute as @e[tag=boss4_sheep_new3,type=sheep,scores={boss_4_system=100..}] at @s run scoreboard players set @s boss_4_system 0
execute as @e[type=sheep,tag=boss4_sheep_new3,scores={boss_4_cool=1200..}] run kill @s
# tp
execute as @e[tag=boss4_sheep_new3] at @s run tp @s ~ ~ ~ ~2 ~

# 拆除
execute as @e[tag=boss4_sheep_new3,type=sheep] at @s if entity @a[gamemode=adventure,distance=..1] run kill @s
# 高亮
effect give @e[tag=boss4_sheep_new3,type=sheep] glowing 10 0 true

