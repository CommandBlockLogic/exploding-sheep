# sheep:tick

# shoot or fan
execute as @a[scores={s_launch=1..,s_energy=30..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=40..,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=40..,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=60..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=60..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=40..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
scoreboard players set @a[scores={s_launch=1..}] s_launch 0

# change color
scoreboard players add @a s_launch_type 0
scoreboard players set @a[scores=s_launch_type=0] s_launch_type 1
execute as @a[scores={s_launch_type=2..,nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}}] run scoreboard players set @s s_launch_type 1
execute as @a[scores={s_launch_type=1,s_class=2,nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}}] run scoreboard players set @s s_launch_type 2
execute as @a[scores={s_launch_type=1,s_class=3,nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}}] run scoreboard players set @s s_launch_type 3
execute as @a[scores={s_launch_type=1,s_class=4,nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}}] run scoreboard players set @s s_launch_type 4
execute as @a[scores={s_launch_type=1,s_class=5,nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}}] run scoreboard players set @s s_launch_type 5
execute as @a[scores={s_launch_type=1,s_class=6,nbt={Inventory:[{Slot:-106b,tag:{item_num:1}}]}}] run scoreboard players set @s s_launch_type 6

# sub
function sheep:blow/tick
function sheep:fan/tick
execute as @e[tag=sheep_sheep] run function sheep:fly/tick

# web
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
execute as @e[scores={s_web_time=1}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:cobweb keep
execute as @e[scores={s_web_time=1}] at @s run particle block cobweb ~ ~0.5 ~ 2 0 2 0 20
execute as @e[scores={s_web_time=101..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:cobweb
kill @e[scores={s_web_time=101..}]