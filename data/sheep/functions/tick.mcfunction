# sheep:tick

# shoot normal
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] s_energy 50

execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=100..,s_launch_type=2},nbt={SelectedItemSlot:0}] s_energy 100

execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=80..,s_launch_type=3},nbt={SelectedItemSlot:0}] s_energy 80

execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=80..,s_launch_type=4},nbt={SelectedItemSlot:0}] s_energy 80

execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=100..,s_launch_type=5},nbt={SelectedItemSlot:0}] s_energy 100

execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] s_energy 120

# shoot ultimate
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/gray/main
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/purple/main
execute as @a[scores={s_launch=1..,s_launch_type=103..104},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main

# fan
execute as @a[scores={s_launch=1..,s_fan_num=1..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
scoreboard players remove @a[scores={s_launch=1..,s_fan_num=1..},nbt={SelectedItemSlot:1}] s_fan_num 1

scoreboard players set @a[scores={s_launch=1..}] s_launch 0



# player id
scoreboard players add @a s_id 0
execute as @a[scores={s_id=0},limit=1] run scoreboard players add s_id_max s_id 1
execute as @a[scores={s_id=0},limit=1] store result score @s s_id run scoreboard players get s_id_max s_id

# ultimate sheep energy
scoreboard players add @a s_ulti_energy 1


# sub
function sheep:blow/tick
function sheep:fan/tick
function sheep:reload/tick
execute as @e[tag=sheep_sheep] run function sheep:fly/tick
function sheep:change_color
function sheep:ultimate/tick



# heal
scoreboard players add @e[tag=sheep_heal_mark] s_heal_time 1
execute as @e[scores={s_heal_time=1..}] at @s run function sheep:effect/heal
execute as @e[scores={s_heal_time=1..}] at @s run tp @s ~ ~0.25 ~
kill @e[scores={s_heal_time=10..}]


# ice
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
scoreboard players add @e[tag=sheep_web_mark] s_temp1 1
scoreboard players set @e[tag=sheep_web_mark,scores={s_temp1=3}] s_temp1 0
execute as @e[scores={s_web_time=1..,s_temp1=1}] at @s run function sheep:effect/ice2
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark] at @s run effect give @e[distance=..3,type=!player] minecraft:slowness 1 2 true
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark_red] at @s run effect give @a[distance=..3,team=blue] minecraft:slowness 1 2 false
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark_blue] at @s run effect give @a[distance=..3,team=red] minecraft:slowness 1 2 false
kill @e[scores={s_web_time=101..}]

