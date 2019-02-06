# sheep:sheep_effect/lime/tick

scoreboard players add @e[tag=sheep_type_lime,scores={s_blow_time=1..}] s_ulti_inter 1
scoreboard players add @e[tag=sheep_type_lime,scores={s_blow_time=1..}] s_ulti_dura 1
execute as @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_inter=15}] at @s run function sheep:ultimate/type/lime/effect
scoreboard players set @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_inter=15..}] s_ulti_inter 0
kill @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_dura=200..}]

execute as @e[tag=sheep_type_lime,scores={s_blow_time=1..}] at @s run function sheep:sheep_effect/lime/clear_ulti

team join red @e[tag=sheep_type_lime,tag=sheep_team_red,team=]
team join blue @e[tag=sheep_type_lime,tag=sheep_team_blue,team=]
effect give @e[tag=sheep_type_lime,team=!] glowing 1 1 true

scoreboard players add @e[tag=sheep_lime_mark] s_lime_time 1
execute as @e[scores={s_lime_time=1..}] at @s run function sheep:sheep_effect/lime/particle
execute as @e[scores={s_lime_time=1..}] at @s run tp @s ~ ~0.25 ~
kill @e[scores={s_lime_time=10..}]