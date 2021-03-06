# sheep:change_color

# init
scoreboard players add @a s_launch_type 0
scoreboard players set @a[scores={s_launch_type=0}] s_launch_type 1
scoreboard players add @a s_class 0
scoreboard players set @a[scores={s_class=0}] s_class 1

# trigger
tag @a[scores={s_launch_type=2..9999},nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}] add sheep_change_n
tag @a[scores={s_launch_type=1},nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}] add sheep_change_c

execute as @a[tag=sheep_change_n] run scoreboard players set @s s_launch_type 1
execute as @a[scores={s_class=2},tag=sheep_change_c] run scoreboard players set @s s_launch_type 2
execute as @a[scores={s_class=3},tag=sheep_change_c] run scoreboard players set @s s_launch_type 3
execute as @a[scores={s_class=4},tag=sheep_change_c] run scoreboard players set @s s_launch_type 4
execute as @a[scores={s_class=5},tag=sheep_change_c] run scoreboard players set @s s_launch_type 5
execute as @a[scores={s_class=6},tag=sheep_change_c] run scoreboard players set @s s_launch_type 6
execute as @a[scores={s_class=101},tag=sheep_change_c] run scoreboard players set @s s_launch_type 101
execute as @a[scores={s_class=102},tag=sheep_change_c] run scoreboard players set @s s_launch_type 102
execute as @a[scores={s_class=201},tag=sheep_change_c] run scoreboard players set @s s_launch_type 201
execute as @a[scores={s_class=202},tag=sheep_change_c] run scoreboard players set @s s_launch_type 202

execute as @a[scores={s_class=1001}] unless score @s s_launch_type matches 1001 run scoreboard players set @s s_launch_type 1001
execute as @a[scores={s_class=1002}] unless score @s s_launch_type matches 1002 run scoreboard players set @s s_launch_type 1002
execute as @a[scores={s_class=1003}] unless score @s s_launch_type matches 1003 run scoreboard players set @s s_launch_type 1003
execute as @a[scores={s_class=1004}] unless score @s s_launch_type matches 1004 run scoreboard players set @s s_launch_type 1004


# clear
tag @a[tag=sheep_change_n] remove sheep_change_n
tag @a[tag=sheep_change_c] remove sheep_change_c

