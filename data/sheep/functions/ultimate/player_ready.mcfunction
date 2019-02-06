# sheep:ultimate/player_ready

# change class
execute store result score @s s_class_2 run scoreboard players get @s s_class
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_temp","sheep_random_1"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_temp","sheep_random_2"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_temp","sheep_random_3"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["sheep_temp","sheep_random_4"]}
tag @e[tag=sheep_temp,sort=random,limit=1] add sheep_thatsit
execute if entity @e[tag=sheep_thatsit,tag=sheep_random_1] run scoreboard players set @s s_class 101
execute if entity @e[tag=sheep_thatsit,tag=sheep_random_2] run scoreboard players set @s s_class 102
execute if entity @e[tag=sheep_thatsit,tag=sheep_random_3] run scoreboard players set @s s_class 201
execute if entity @e[tag=sheep_thatsit,tag=sheep_random_4] run scoreboard players set @s s_class 202
kill @e[tag=sheep_temp]
execute store result score @s s_launch_type run scoreboard players get @s s_class

# change sheep
tag @s add player_temp
execute as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run scoreboard players set @s s_ulti_sheep 1000
execute if score @s s_class matches 101 as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run data merge entity @s {Color:8}
execute if score @s s_class matches 102 as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run data merge entity @s {Color:10}
execute if score @s s_class matches 201 as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run data merge entity @s {Color:5}
execute if score @s s_class matches 202 as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run data merge entity @s {Color:11}
tag @a[tag=player_temp] remove player_temp

# hint
tellraw @s[scores={s_class=101}] [">> 啊！是超级",{"text":"灰羊羊","color":"gray"},"! 赋予你10秒内连续发射羊羊的能力!"]
tellraw @s[scores={s_class=102}] [">> 啊！是超级",{"text":"紫羊羊","color":"dark_purple"},"! 触发后10秒内身边将环绕三个紫羊羊! 对手碰到损失生命值!"]
tellraw @s[scores={s_class=201}] [">> 啊！是超级",{"text":"蓝羊羊","color":"blue"},"! 落地后将召唤羊羊雨! 高度太低就召唤不到啦!"]
tellraw @s[scores={s_class=202}] [">> 啊！是超级",{"text":"柠羊羊","color":"green"},"! 在羊羊身边会大大加速能量恢复!"]
