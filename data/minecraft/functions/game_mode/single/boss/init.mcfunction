# Boss4: 羊羊之神
# 删除
scoreboard objectives remove boss_4_health
scoreboard objectives remove boss_4_int
scoreboard objectives remove boss_4_float
scoreboard objectives remove boss_4_max
scoreboard objectives remove boss_4_cool
scoreboard objectives remove boss_4_system
bossbar remove boss4
# 添加
scoreboard objectives add boss_4_health dummy
scoreboard objectives add boss_4_int dummy
scoreboard objectives add boss_4_float dummy
scoreboard objectives add boss_4_max dummy
scoreboard objectives add boss_4_cool dummy
scoreboard objectives add boss_4_system dummy
bossbar add boss4 [{"text":"boss4"}]

# Boss血条颜色计算
execute as @a[team=red] run scoreboard players add 游戏人数 boss_4_system 1
scoreboard players set boss血量 boss_4_system 100
scoreboard players set boss额外血量 boss_4_system 100
scoreboard players operation boss血量 boss_4_system *= 游戏人数 boss_4_system
scoreboard players operation boss血量 boss_4_system += boss额外血量 boss_4_system
scoreboard players operation boss血量 boss_4_system *= boss额外血量 boss_4_system

scoreboard players operation boss生命 boss_4_health = boss血量 boss_4_system

execute run scoreboard players set 百分比 boss_4_health 100
execute run scoreboard players set 半血 boss_4_health 50
execute run scoreboard players set 绿血 boss_4_health 100
execute run scoreboard players set 黄血 boss_4_health 67
execute run scoreboard players set 红血 boss_4_health 34
execute run scoreboard players operation 67-100 boss_4_health = boss生命 boss_4_health
execute run scoreboard players operation 67-100 boss_4_health *= 绿血 boss_4_health
execute run scoreboard players operation 67-100 boss_4_health /= 百分比 boss_4_health
execute run scoreboard players operation 34-67 boss_4_health = boss生命 boss_4_health
execute run scoreboard players operation 34-67 boss_4_health *= 黄血 boss_4_health
execute run scoreboard players operation 34-67 boss_4_health /= 百分比 boss_4_health
execute run scoreboard players operation 0-34 boss_4_health = boss生命 boss_4_health
execute run scoreboard players operation 0-34 boss_4_health *= 红血 boss_4_health
execute run scoreboard players operation 0-34 boss_4_health /= 百分比 boss_4_health
execute run scoreboard players operation 50血量 boss_4_health = boss生命 boss_4_health
execute run scoreboard players operation 50血量 boss_4_health *= 半血 boss_4_health
execute run scoreboard players operation 50血量 boss_4_health /= 百分比 boss_4_health

# 游戏状态
scoreboard players set 游戏状态 boss_4_system 0

# 初始化状态1
function minecraft:game_mode/single/boss/system/status_0/init
