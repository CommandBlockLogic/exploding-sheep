# 取消所有计分板显示
bossbar set minecraft:boss1 players
bossbar set minecraft:boss2 players
bossbar set minecraft:boss3 players
bossbar set minecraft:boss_player players
bossbar set minecraft:boss_cool players

# 删除所有boss和生物
kill @e[tag=monster,type=!player]
execute as @a[tag=HerobrineXia] run function minecraft:lobby/pve/other/player_boss_reset