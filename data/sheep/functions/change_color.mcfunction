# sheep:change_color

# init
scoreboard players add @a s_launch_type 0
scoreboard players set @a[scores={s_launch_type=0}] s_launch_type 1

# trigger
tag @a[nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}] add sheep_change_temp

# change color
tag @a[scores={s_launch_type=2..},tag=sheep_change_temp] add sheep_change_1
tag @a[scores={s_launch_type=1},tag=sheep_change_temp] add sheep_change_2

execute as @a[tag=sheep_change_1] run scoreboard players set @s s_launch_type 1
execute as @a[scores={s_class=2},tag=sheep_change_2] run scoreboard players set @s s_launch_type 2
execute as @a[scores={s_class=3},tag=sheep_change_2] run scoreboard players set @s s_launch_type 3
execute as @a[scores={s_class=4},tag=sheep_change_2] run scoreboard players set @s s_launch_type 4
execute as @a[scores={s_class=5},tag=sheep_change_2] run scoreboard players set @s s_launch_type 5
execute as @a[scores={s_class=6},tag=sheep_change_2] run scoreboard players set @s s_launch_type 6

# clear
tag @a[tag=sheep_change_temp] remove sheep_change_temp
tag @a[tag=sheep_change_1] remove sheep_change_1
tag @a[tag=sheep_change_2] remove sheep_change_2

