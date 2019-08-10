# sheep:sheep_effect/ice/tick

# ice
# 计时
scoreboard players add @e[tag=sheep_type_crown,tag=sheep_attr_no_explode] s_crown_time 1
# 粒子效果
execute as @e[scores={s_crown_time=1}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=3}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=5}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=7}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=9}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=11}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=13}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=15}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=17}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle
execute as @e[scores={s_crown_time=19}] at @s rotated ~ 0 positioned ~ ~2 ~ run function sheep:sheep_effect/crown/particle



# 删除超时羊
execute at @e[scores={s_crown_time=19..}] run particle minecraft:dust 1 1 0 3 ~ ~0.3 ~ 0.7 0.4 0.7 1 20
kill @e[scores={s_crown_time=19..}]

