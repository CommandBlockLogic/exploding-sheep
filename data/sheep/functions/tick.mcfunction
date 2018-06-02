# sheep:tick

# shoot or fan
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] s_energy 50

execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=100..,s_launch_type=2},nbt={SelectedItemSlot:0}] s_energy 100

execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=80..,s_launch_type=3},nbt={SelectedItemSlot:0}] s_energy 80

execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=80..,s_launch_type=4},nbt={SelectedItemSlot:0}] s_energy 80

execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=120..,s_launch_type=5},nbt={SelectedItemSlot:0}] s_energy 120

execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] s_energy 120

execute as @a[scores={s_launch=1..,s_fan_num=1..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
scoreboard players remove @a[scores={s_launch=1..,s_fan_num=1..},nbt={SelectedItemSlot:1}] s_fan_num 1

scoreboard players set @a[scores={s_launch=1..}] s_launch 0


# fan cd
scoreboard players add @a s_fan_num 0
scoreboard players add @a[scores={s_fan_num=..1}] s_fan_cd 1
scoreboard players add @a[scores={s_fan_cd=10..}] s_fan_num 1
scoreboard players set @a[scores={s_fan_cd=10..}] s_fan_cd 0


# sub
function sheep:blow/tick
function sheep:fan/tick
function sheep:reload/tick
execute as @e[tag=sheep_sheep] run function sheep:fly/tick
function sheep:change_color


# ice
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
scoreboard players add @e[tag=sheep_web_mark] s_temp1 1
scoreboard players set @e[tag=sheep_web_mark,scores={s_temp1=4}] s_temp1 0
execute as @e[scores={s_web_time=1..,s_temp1=1}] at @s run function sheep:effect/ice
kill @e[scores={s_web_time=101..}]