# sheep:sheep_effect/ice/tick

# ice
# 计时
scoreboard players add @e[tag=sheep_type_web,tag=sheep_attr_no_explode] s_web_time 1
# 粒子效果
scoreboard players add @e[scores={s_web_time=1..}] s_web_clock 1
scoreboard players set @e[scores={s_web_clock=4}] s_web_clock 0
execute as @e[scores={s_web_clock=1}] at @s run function sheep:sheep_effect/ice/particle3

# 冰冻效果选择对象
execute as @e[scores={s_web_time=1..},tag=!sheep_team_boss] at @s run tag @e[distance=..3.5,type=!player,tag=monster] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=!sheep_team_boss] at @s run tag @e[distance=..3.5,type=!player,tag=boss_fight] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_team_red] at @s run tag @a[distance=..3.5,team=blue] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_team_blue] at @s run tag @a[distance=..3.5,team=red] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=!sheep_team_red,tag=!sheep_team_blue] at @s run tag @a[distance=..3.5] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=!sheep_team_red,tag=!sheep_team_blue] run function sheep:sheep_effect/ice/exclude_owner
execute as @e[scores={s_web_time=1..}] run tag @a[tag=sheep_ice_temp,scores={s_class=5}] remove sheep_ice_temp
# 减速禁止跳跃
scoreboard players add @e[tag=sheep_ice_temp] s_froze_time 2
scoreboard players remove @e[scores={s_froze_time=1..}] s_froze_time 1
scoreboard players remove @e[scores={s_froze_time=51..}] s_froze_time 1
effect clear @e[scores={s_froze_time=1..}] minecraft:slowness
effect clear @e[scores={s_froze_time=1..}] minecraft:jump_boost
effect give @e[scores={s_froze_time=01..02}] minecraft:slowness 1 0 true
effect give @e[scores={s_froze_time=01..02}] minecraft:jump_boost 1 254 true
effect give @e[scores={s_froze_time=03..04}] minecraft:slowness 1 1 true
effect give @e[scores={s_froze_time=03..04}] minecraft:jump_boost 1 253 true
effect give @e[scores={s_froze_time=05..06}] minecraft:slowness 1 2 true
effect give @e[scores={s_froze_time=05..06}] minecraft:jump_boost 1 252 true
effect give @e[scores={s_froze_time=07..08}] minecraft:slowness 1 3 true
effect give @e[scores={s_froze_time=07..08}] minecraft:jump_boost 1 251 true
effect give @e[scores={s_froze_time=09..10}] minecraft:slowness 1 4 true
effect give @e[scores={s_froze_time=09..10}] minecraft:jump_boost 1 250 true
effect give @e[scores={s_froze_time=11..12}] minecraft:slowness 1 5 true
effect give @e[scores={s_froze_time=11..12}] minecraft:jump_boost 1 249 true
effect give @e[scores={s_froze_time=13..}] minecraft:slowness 1 6 true
effect give @e[scores={s_froze_time=13..}] minecraft:jump_boost 1 248 true
# 玩家身上粒子
execute as @e[scores={s_froze_time=1..}] at @s run particle minecraft:block ice ~ ~1 ~ 0.3 0.5 0.3 1 2
# 不允许用扇子
scoreboard players set @a[scores={s_froze_time=13..}] s_fan_num 0
# 清零对象
tag @e[tag=sheep_ice_temp] remove sheep_ice_temp

# 删除超时羊
execute at @e[scores={s_web_time=101..}] run particle minecraft:dust 0.333 1 1 3 ~ ~0.3 ~ 0.7 0.4 0.7 1 20
kill @e[scores={s_web_time=101..}]

# 最多5个冰冻羊存在
# 赋予新羊id 新羊最大
scoreboard players add @e[scores={s_web_time=1..}] s_web_id 0
execute as @e[scores={s_web_id=0},limit=1] run scoreboard players add s_web_id_max s_web_id 1
execute as @e[scores={s_web_id=0},limit=1] store result score @s s_web_id run scoreboard players get s_web_id_max s_web_id
# 当前数量
execute store result score s_web_num s_web_id if entity @e[scores={s_web_time=1..}]
# 查找最小的并删除
execute if score s_web_num s_web_id matches 6.. store result score s_web_temp s_web_id run scoreboard players get @e[scores={s_web_id=1..},limit=1] s_web_id
execute if score s_web_num s_web_id matches 6.. as @e[scores={s_web_id=1..}] run scoreboard players operation s_web_temp s_web_id < @s s_web_id
execute if score s_web_num s_web_id matches 6.. as @e[scores={s_web_id=1..}] if score @s s_web_id = s_web_temp s_web_id run particle minecraft:dust 0.333 1 1 3 ~ ~0.3 ~ 0.7 0.4 0.7 1 20
execute if score s_web_num s_web_id matches 6.. as @e[scores={s_web_id=1..}] if score @s s_web_id = s_web_temp s_web_id run kill @s

# 加入队伍
team join red @e[scores={s_web_time=1..},tag=sheep_team_red,team=]
team join blue @e[scores={s_web_time=1..},tag=sheep_team_blue,team=]