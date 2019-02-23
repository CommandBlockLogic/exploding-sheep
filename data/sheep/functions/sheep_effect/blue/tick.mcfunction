# sheep:sheep_effect/blue/tick

scoreboard players add @e[tag=sheep_type_blue,scores={s_blow_time=1..}] s_ulti_inter 1
scoreboard players add @e[tag=sheep_type_blue,scores={s_blow_time=1..}] s_ulti_dura 1
execute as @e[tag=sheep_type_blue,scores={s_blow_time=1..,s_ulti_inter=6}] at @s run function sheep:ultimate/type/blue/summon_sheep
scoreboard players set @e[tag=sheep_type_blue,scores={s_blow_time=1..,s_ulti_inter=6..}] s_ulti_inter 0
kill @e[tag=sheep_type_blue,scores={s_blow_time=1..,s_ulti_dura=200..}]

execute as @e[tag=sheep_type_blue,scores={s_blow_time=1..}] at @s run function sheep:sheep_effect/lime/clear_ulti

team join red @e[tag=sheep_type_blue,tag=sheep_team_red,team=]
team join blue @e[tag=sheep_type_blue,tag=sheep_team_blue,team=]

