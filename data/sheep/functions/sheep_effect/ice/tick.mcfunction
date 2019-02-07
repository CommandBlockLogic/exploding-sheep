# sheep:sheep_effect/ice/tick

# ice
# effect
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
scoreboard players add @e[tag=sheep_web_mark] s_temp1 1
scoreboard players set @e[tag=sheep_web_mark,scores={s_temp1=3}] s_temp1 0
execute as @e[scores={s_web_time=1..,s_temp1=1}] at @s run function sheep:sheep_effect/ice/particle2
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark,tag=!sheep_web_mark_boss] at @s run tag @e[distance=..3.5,type=!player,tag=monster] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark_red] at @s run tag @a[distance=..3.5,team=blue] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark_blue] at @s run tag @a[distance=..3.5,team=red] add sheep_ice_temp
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark,tag=!sheep_web_mark_blue,tag=!sheep_web_mark_red] at @s run tag @a[distance=..3.5] add sheep_ice_temp
effect give @e[tag=sheep_ice_temp] minecraft:slowness 3 10 false
#effect give @e[tag=sheep_ice_temp] minecraft:blindness 2 0 false
effect give @e[tag=sheep_ice_temp] minecraft:jump_boost 3 128 false
execute as @e[tag=sheep_ice_temp] at @s run particle minecraft:block ice ~ ~1 ~ 0.3 0.5 0.3 1 2
scoreboard players set @a[tag=sheep_ice_temp] s_fan_num 0
tag @e[tag=sheep_ice_temp] remove sheep_ice_temp
kill @e[scores={s_web_time=101..}]
# 5 most
scoreboard players add @e[tag=sheep_web_mark] s_web_id 0
execute as @e[tag=sheep_web_mark,scores={s_web_id=0},limit=1] run scoreboard players add s_web_id_max s_web_id 1
execute as @e[tag=sheep_web_mark,scores={s_web_id=0},limit=1] store result score @s s_web_id run scoreboard players get s_web_id_max s_web_id
execute store result score s_web_num s_web_id if entity @e[tag=sheep_web_mark]
execute if score s_web_num s_web_id matches 6.. store result score s_web_temp s_web_id run scoreboard players get @e[tag=sheep_web_mark,scores={s_web_id=1..},limit=1] s_web_id
execute if score s_web_num s_web_id matches 6.. as @e[tag=sheep_web_mark,scores={s_web_id=1..}] run scoreboard players operation s_web_temp s_web_id < @s s_web_id
execute if score s_web_num s_web_id matches 6.. as @e[tag=sheep_web_mark,scores={s_web_id=1..}] if score @s s_web_id = s_web_temp s_web_id run kill @s
