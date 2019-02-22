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

# 小怪
function minecraft:lobby/pve/other/monster

# 结界
function minecraft:lobby/pve/other/barrier

# 隐藏点
execute as @a[x=-175,y=28,z=-225,dx=4,dy=4,dz=25,gamemode=adventure] run effect give @s minecraft:slowness 1 3 true
execute as @a[x=-175,y=17,z=-221,dx=4,dy=4,dz=4,gamemode=adventure] run tp @s -174 11 -219