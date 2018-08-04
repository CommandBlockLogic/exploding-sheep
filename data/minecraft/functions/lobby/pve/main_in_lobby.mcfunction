# 计算数值设置
scoreboard players set 复活百分比 pve_system 100
scoreboard players set Boss复活时间 pve_system 600

# Boss复活倒数重置
execute unless score Boss复活冷却 pve_system matches 0.. unless entity @e[tag=boss_exist] run scoreboard players set Boss复活冷却 pve_system 0

# Boss不存在---主函数
execute unless score Boss复活冷却 pve_system >= Boss复活时间 pve_system unless entity @e[tag=boss_exist] run function minecraft:lobby/pve/other/no_boss

# Boss冷却0时复活
execute if score Boss复活冷却 pve_system >= Boss复活时间 pve_system unless entity @e[tag=boss_exist] run function minecraft:lobby/pve/other/summon_boss
execute if score Boss复活冷却 pve_system >= Boss复活时间 pve_system run scoreboard players reset Boss复活冷却 pve_system

# Boss存在---主函数
execute if entity @e[tag=boss_exist] run function minecraft:lobby/pve/other/exist_boss

# 结界
function minecraft:lobby/pve/other/barrier