# Boss复活Bossbar隐藏
bossbar set minecraft:boss_cool players

# Boss的主函数
execute if score Boss编号 pve_system matches 1 run function minecraft:lobby/pve/boss_1/main
execute if score Boss编号 pve_system matches 2 run function minecraft:lobby/pve/boss_2/main
execute if score Boss编号 pve_system matches 3 run function minecraft:lobby/pve/boss_3/main