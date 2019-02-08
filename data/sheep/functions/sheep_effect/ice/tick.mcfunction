# sheep:sheep_effect/ice/tick

# ice
# 计时
scoreboard players add @e[tag=sheep_type_web,scores={s_blow_time=1..}] s_web_time 1
# 粒子效果
scoreboard players add @e[tag=sheep_type_web,scores={s_blow_time=1..}] s_temp1 1
scoreboard players set @e[tag=sheep_type_web,scores={s_temp1=3}] s_temp1 0
execute as @e[scores={s_web_time=1..,s_temp1=1}] at @s run function sheep:sheep_effect/ice/particle2

# 冰冻效果选择对象
execute as @e[scores={s_web_time=1..},tag=!sheep_team_boss] at @s run tag @e[distance=..3.5,type=!player,tag=monster] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_team_red] at @s run tag @a[distance=..3.5,team=blue] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_team_blue] at @s run tag @a[distance=..3.5,team=red] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=!sheep_team_red,tag=!sheep_team_blue] at @s run tag @a[distance=..3.5] add sheep_ice_temp
# 减速禁止跳跃
effect give @e[tag=sheep_ice_temp] minecraft:slowness 3 10 false
#effect give @e[tag=sheep_ice_temp] minecraft:blindness 2 0 false
effect give @e[tag=sheep_ice_temp] minecraft:jump_boost 3 128 false
# 玩家身上粒子
execute as @e[tag=sheep_ice_temp] at @s run particle minecraft:block ice ~ ~1 ~ 0.3 0.5 0.3 1 2
# 不允许用扇子
scoreboard players set @a[tag=sheep_ice_temp] s_fan_num 0
# 清零对象
tag @e[tag=sheep_ice_temp] remove sheep_ice_temp

# 删除超时羊
kill @e[scores={s_web_time=101..}]

# 最多5个冰冻羊存在
# 赋予新羊id 新羊最大
scoreboard players add @e[tag=sheep_type_web,scores={s_web_time=1..}] s_web_id 0
execute as @e[tag=sheep_type_web,scores={s_web_id=0},limit=1] run scoreboard players add s_web_id_max s_web_id 1
execute as @e[tag=sheep_type_web,scores={s_web_id=0},limit=1] store result score @s s_web_id run scoreboard players get s_web_id_max s_web_id
# 当前数量
execute store result score s_web_num s_web_id if entity @e[tag=sheep_type_web,scores={s_web_time=1..}]
# 查找最小的并删除
execute if score s_web_num s_web_id matches 6.. store result score s_web_temp s_web_id run scoreboard players get @e[tag=sheep_type_web,scores={s_web_id=1..},limit=1] s_web_id
execute if score s_web_num s_web_id matches 6.. as @e[tag=sheep_type_web,scores={s_web_id=1..}] run scoreboard players operation s_web_temp s_web_id < @s s_web_id
execute if score s_web_num s_web_id matches 6.. as @e[tag=sheep_type_web,scores={s_web_id=1..}] if score @s s_web_id = s_web_temp s_web_id run kill @s

# 加入队伍
team join red @e[tag=sheep_type_lime,tag=sheep_team_red,team=]
team join blue @e[tag=sheep_type_lime,tag=sheep_team_blue,team=]