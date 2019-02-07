scoreboard players set 技能冷却 boss_2_pass 200
scoreboard players add @e[tag=boss2,tag=real_boss2] boss_2_pass 1
scoreboard players add @e[tag=boss2,tag=fake_boss2] boss_2_pass 2


execute as @e[tag=boss2] if score @s boss_2_pass >= 技能冷却 boss_2_pass at @s run function minecraft:lobby/pve/boss_2/summon_sheep

execute as @e[tag=boss2] if score @s boss_2_pass >= 技能冷却 boss_2_pass run scoreboard players set @s boss_2_pass 0
