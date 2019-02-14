scoreboard objectives remove boss_4_system

scoreboard objectives add boss_4_system dummy

# Boss血条颜色计算
execute as @a[team=red] run scoreboard players add 游戏人数 boss_4_system 1
scoreboard players set boss血量 boss_4_system 100
scoreboard players set boss额外血量 boss_4_system 100
scoreboard players operation boss血量 boss_4_system *= 游戏人数 boss_4_system
scoreboard players operation boss血量 boss_4_system += boss额外血量 boss_4_system
scoreboard players operation boss血量 boss_4_system *= boss额外血量 boss_4_system

execute run scoreboard players set 百分比 boss_4_health 100
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