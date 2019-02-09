# lobby/change_class

# text
execute as @e[tag=system_class_mark,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..8] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_class_mark,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..8] run data merge entity @s {CustomNameVisible:0}

# change class
execute at @e[tag=system_class_mark] as @a[distance=..0.3] unless score @s s_launch_type matches 1 unless score @s s_class matches 100..999 run scoreboard players set @s s_launch_type 1
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §f普通§r 系\n - 虽然能力普通, 但是总能量高!"]
execute at @e[tag=system_class_mark_white] as @a[distance=..0.3] unless score @s s_class matches 1 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 1
execute at @e[tag=system_class_mark_black] as @a[distance=..0.3] unless score @s s_class matches 2 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §1末影§r 系\n - 羊羊会将它的主人传送到它落地的位置!","\n - 手持小羊大炮按F即可切换!"]
execute at @e[tag=system_class_mark_black] as @a[distance=..0.3] unless score @s s_class matches 2 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 2
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §e失重§r 系\n - 羊羊将不受重力影响直直前进! 飞行距离越远伤害越高!","\n - 手持小羊大炮按F即可切换!"]
execute at @e[tag=system_class_mark_blue] as @a[distance=..0.3] unless score @s s_class matches 3 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 3
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §c瞬发§r 系\n - 落地后羊羊将会立刻爆炸!","\n - 手持小羊大炮按F即可切换!"]
execute at @e[tag=system_class_mark_red] as @a[distance=..0.3] unless score @s s_class matches 4 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 4
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §b冰冻§r 系\n - 羊羊会在地面生成雪花阵, 逐渐降低敌人的移动速度","\n - 直到将敌人完全冻住！被冻住时更无法挥动扇子","\n - 手持小羊大炮按F即可切换!"]
execute at @e[tag=system_class_mark_cyan] as @a[distance=..0.3] unless score @s s_class matches 5 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 5
execute at @e[tag=system_class_mark_orange] as @a[distance=..0.3] unless score @s s_class matches 6 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §6吸收§r 系\n - 羊羊在附近生成吸收阵, 其中的队友会获得伤害吸收","\n - 手持小羊大炮按F即可切换!"]
execute at @e[tag=system_class_mark_orange] as @a[distance=..0.3] unless score @s s_class matches 6 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 6

execute at @e[tag=system_class_mark_volleyball] as @a[distance=..0.3] unless score @s s_class matches 1001 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §b排球§r 系\n - 羊羊飞的慢慢的, 可以用扇子丢来丢去"]
execute at @e[tag=system_class_mark_volleyball] as @a[distance=..0.3] unless score @s s_class matches 1001 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 1001
execute at @e[tag=system_class_mark_football] as @a[distance=..0.3] unless score @s s_class matches 1002 unless score @s s_class matches 100..999 run tellraw @s [">> 切换至 §8足球§r 系\n - 羊羊落地无事发生, 可以用扇子丢来丢去"]
execute at @e[tag=system_class_mark_football] as @a[distance=..0.3] unless score @s s_class matches 1002 unless score @s s_class matches 100..999 run scoreboard players set @s s_class 1002
