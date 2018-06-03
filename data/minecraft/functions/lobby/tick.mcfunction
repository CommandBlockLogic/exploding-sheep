# lobby/tick

# hint show
execute as @e[tag=system_class_mark,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..5] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_class_mark,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..5] run data merge entity @s {CustomNameVisible:0}
execute as @e[tag=system_lobby_mark_hint,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..8] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_lobby_mark_hint,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..8] run data merge entity @s {CustomNameVisible:0}

# change class
execute at @e[tag=system_class_mark] as @a[distance=..0.3] unless score @s s_launch_type matches 1 run scoreboard players set @s s_launch_type 1
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 run tellraw @s [">> 切换至 §f普通§r 系"]
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 run scoreboard players set @s s_class 1
execute at @e[tag=system_class_mark_gray] as @a[distance=..0.3] unless score @s s_class matches 2 run tellraw @s [">> 切换至 §7笨重§r 系"]
execute at @e[tag=system_class_mark_gray] as @a[distance=..0.3] unless score @s s_class matches 2 run scoreboard players set @s s_class 2
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 run tellraw @s [">> 切换至 §9失重§r 系"]
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 run scoreboard players set @s s_class 3
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 run tellraw @s [">> 切换至 §c瞬发§r 系"]
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 run scoreboard players set @s s_class 4
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 run tellraw @s [">> 切换至 §b冰冻§r 系"]
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 run scoreboard players set @s s_class 5
execute at @e[tag=system_class_mark_pink] as @a[distance=..0.3] unless score @s s_class matches 6 run tellraw @s [">> 切换至 §d治愈§r 系"]
execute at @e[tag=system_class_mark_pink] as @a[distance=..0.3] unless score @s s_class matches 6 run scoreboard players set @s s_class 6
# enter game
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=blue] -36 15 -40 -90 0
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=red] 40 14 34 100 0
# enter team
execute at @e[tag=system_lobby_mark_join_red] run tag @e[tag=sheep_team_blue,scores={s_blow_time=1},distance=..4,limit=1] add system_join_red_temp
execute at @e[tag=system_lobby_mark_join_blue] run tag @e[tag=sheep_team_red,scores={s_blow_time=1},distance=..4,limit=1] add system_join_blue_temp
execute as @a if score @s s_id = @e[tag=system_join_red_temp,limit=1] s_thrower_id run team join red @s
execute as @a if score @s s_id = @e[tag=system_join_red_temp,limit=1] s_thrower_id run tellraw @a [">> ",{"selector":"@s"},"加入了§c红队§r"]
execute as @a if score @s s_id = @e[tag=system_join_blue_temp,limit=1] s_thrower_id run team join blue @s
execute as @a if score @s s_id = @e[tag=system_join_blue_temp,limit=1] s_thrower_id run tellraw @a [">> ",{"selector":"@s"},"加入了§9蓝队§r"]
tag @e[tag=system_join_red_temp] remove system_join_red_temp
tag @e[tag=system_join_blue_temp] remove system_join_blue_temp

# resistance
execute positioned -248 1 -218 run effect give @a[dx=167,dy=250,dz=215] minecraft:resistance 3 5 true