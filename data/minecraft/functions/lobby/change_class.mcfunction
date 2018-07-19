# lobby/change_class

# text
execute as @e[tag=system_lobby_mark_enter,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..8] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_lobby_mark_enter,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..8] run data merge entity @s {CustomNameVisible:0}
# change class
execute at @e[tag=system_class_mark] as @a[distance=..0.3] unless score @s s_launch_type matches 1 run scoreboard players set @s s_launch_type 1
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 run tellraw @s [">> 切换至 §f普通§r 系"]
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 run scoreboard players set @s s_class 1
execute at @e[tag=system_class_mark_gray] as @a[distance=..0.3] unless score @s s_class matches 2 run tellraw @s [">> 切换至 §7笨重§r 系"]
execute at @e[tag=system_class_mark_gray] as @a[distance=..0.3] unless score @s s_class matches 2 run scoreboard players set @s s_class 2
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 run tellraw @s [">> 切换至 §e失重§r 系"]
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 run scoreboard players set @s s_class 3
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 run tellraw @s [">> 切换至 §c瞬发§r 系"]
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 run scoreboard players set @s s_class 4
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 run tellraw @s [">> 切换至 §b冰冻§r 系"]
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 run scoreboard players set @s s_class 5
execute at @e[tag=system_class_mark_pink] as @a[distance=..0.3] unless score @s s_class matches 6 run tellraw @s [">> 切换至 §d治愈§r 系"]
execute at @e[tag=system_class_mark_pink] as @a[distance=..0.3] unless score @s s_class matches 6 run scoreboard players set @s s_class 6
