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