# sheep:sheep_effect/lime/tick

# 增加计时和时钟
scoreboard players add @e[tag=sheep_type_lime,scores={s_blow_time=1..}] s_ulti_inter 1
scoreboard players add @e[tag=sheep_type_lime,scores={s_blow_time=1..}] s_ulti_dura 1
# 15tick时增加能量并重置时钟
execute as @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_inter=15}] at @s run function sheep:ultimate/type/lime/effect
scoreboard players set @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_inter=15..}] s_ulti_inter 0
# 杀死超时羊
execute at @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_dura=200..}] run particle minecraft:cloud ~ ~0.5 ~ 0 0.5 0 0.09 50
kill @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_dura=200..}]
# 羊存在期间禁止增加大招
execute as @e[tag=sheep_type_lime,scores={s_blow_time=1..}] at @s run function sheep:sheep_effect/lime/clear_ulti

# 羊加队伍高亮
team join red @e[tag=sheep_type_lime,tag=sheep_team_red,team=]
team join blue @e[tag=sheep_type_lime,tag=sheep_team_blue,team=]
effect give @e[tag=sheep_type_lime,team=!] glowing 1 1 true

# 效果粒子
scoreboard players add @e[tag=sheep_lime_mark] s_lime_time 1
execute as @e[scores={s_lime_time=1..}] at @s run function sheep:sheep_effect/lime/particle
execute as @e[scores={s_lime_time=1..}] at @s run tp @s ~ ~0.25 ~
kill @e[scores={s_lime_time=10..}]