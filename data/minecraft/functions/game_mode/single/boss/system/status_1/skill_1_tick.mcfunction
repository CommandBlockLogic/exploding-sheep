# tp
execute as @e[tag=boss4] at @s run tp @e[type=sheep,tag=boss4_skill1_sheep1,limit=1] ^2 ^2 ^
execute as @e[tag=boss4] at @s run tp @e[type=sheep,tag=boss4_skill1_sheep2,limit=1] ^-2 ^2 ^
execute as @e[tag=boss4] at @s run tp @e[type=sheep,tag=boss4_skill1_sheep3,limit=1] ^ ^2 ^

# 发射等待
scoreboard players add @e[type=sheep,tag=boss4_sheep_new] boss_4_cool 1
execute as @e[type=sheep,tag=boss4_sheep_new,scores={boss_4_cool=80..}] at @s facing entity @e[gamemode=adventure,sort=nearest,limit=1] feet run function minecraft:game_mode/single/boss/system/status_1/skill_1_launch
execute as @e[type=sheep,tag=boss4_sheep_new,scores={boss_4_cool=80..}] at @s run tp @s ~ -100 ~
execute as @e[type=sheep,tag=boss4_sheep_new,scores={boss_4_cool=80..}] at @s run kill @s