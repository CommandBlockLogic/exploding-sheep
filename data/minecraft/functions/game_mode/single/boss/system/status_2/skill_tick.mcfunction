scoreboard players add @e[tag=boss_fight_monster] boss_4_system 1

execute if entity @e[tag=boss1] run function minecraft:lobby/pve/boss_1/skill_1
execute if entity @e[tag=boss1] run function minecraft:lobby/pve/boss_1/skill_2

execute if entity @e[tag=boss2] run function minecraft:lobby/pve/boss_2/skill_1
execute if entity @e[tag=boss2] run function minecraft:lobby/pve/boss_2/skill_2

execute if entity @e[tag=boss3] run function minecraft:lobby/pve/boss_3/skill_1
execute if entity @e[tag=boss3] run function minecraft:lobby/pve/boss_3/skill_2

kill @e[tag=boss_fight_monster,scores={boss_4_system=600..}]