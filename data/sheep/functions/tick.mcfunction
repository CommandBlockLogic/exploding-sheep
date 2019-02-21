# sheep:tick

# shoot sheep
# shoot normal
execute as @a[scores={s_launch=1..,s_energy=..49,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] s_energy 50

execute as @a[scores={s_launch=1..,s_energy=..79,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=80..,s_launch_type=2},nbt={SelectedItemSlot:0}] s_energy 80

execute as @a[scores={s_launch=1..,s_energy=..59,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=60..,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=60..,s_launch_type=3},nbt={SelectedItemSlot:0}] s_energy 60

execute as @a[scores={s_launch=1..,s_energy=..89,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=90..,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=90..,s_launch_type=4},nbt={SelectedItemSlot:0}] s_energy 90

execute as @a[scores={s_launch=1..,s_energy=..79,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=80..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=80..,s_launch_type=5},nbt={SelectedItemSlot:0}] s_energy 90

execute as @a[scores={s_launch=1..,s_energy=..119,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] s_energy 120

execute as @a[scores={s_launch=1..,s_energy=..99,s_launch_type=1001},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=1001},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=100..,s_launch_type=1001},nbt={SelectedItemSlot:0}] s_energy 100

execute as @a[scores={s_launch=1..,s_energy=..99,s_launch_type=1001},nbt={SelectedItemSlot:0}] at @s run playsound minecraft:block.dispenser.fail player @s ~ ~ ~ 1 2
execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=1002},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=100..,s_launch_type=1002},nbt={SelectedItemSlot:0}] s_energy 100


# ultimate hint
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 快跟他拉开距离!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=202,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=202,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 快跟他拉开距离!"]

execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 快跟他拉开距离!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=202,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=202,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 快跟他拉开距离!"]


# shoot ultimate
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/gray/main
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/purple/main
execute as @a[scores={s_launch=1..,s_launch_type=201..999},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_launch_type=201..999},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/end

# fan
execute as @a[scores={s_launch=1..,s_fan_num=1..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
scoreboard players remove @a[scores={s_launch=1..,s_fan_num=1..},nbt={SelectedItemSlot:1}] s_fan_num 1

# ultimate start
execute as @a[scores={s_ulti_launch=1..,s_ulti_energy=4001..},nbt={SelectedItemSlot:0}] at @s run function sheep:ultimate/main

# clear
scoreboard players set @a[scores={s_launch=1..}] s_launch 0
scoreboard players set @a[scores={s_ulti_launch=1..}] s_ulti_launch 0















# player id
scoreboard players add @a s_id 0
execute as @a[scores={s_id=0},limit=1] run scoreboard players add s_id_max s_id 1
execute as @a[scores={s_id=0},limit=1] store result score @s s_id run scoreboard players get s_id_max s_id



# sub
function sheep:blow/tick
function sheep:fan/tick
function sheep:reload/tick
execute as @e[tag=sheep_sheep,tag=!sheep_attr_tracking] run function sheep:fly/tick
execute as @e[tag=sheep_attr_tracking] run function sheep:fly/tracking2
function sheep:ultimate/tick

# sheep effect
function sheep:sheep_effect/blue/tick
function sheep:sheep_effect/heal/tick
function sheep:sheep_effect/ice/tick
function sheep:sheep_effect/lime/tick



# advancement
advancement grant @a[advancements={sheep:sheep/root=false}] only sheep:sheep/root
advancement grant @a[advancements={sheep:fan/root=false}] only sheep:fan/root








