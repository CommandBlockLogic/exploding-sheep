# sheep:tick

# shoot sheep
# shoot normal
execute as @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=50..,s_launch_type=..1},nbt={SelectedItemSlot:0}] s_energy 50

execute as @a[scores={s_launch=1..,s_energy=160..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=160..,s_launch_type=2},nbt={SelectedItemSlot:0}] s_energy 160

execute as @a[scores={s_launch=1..,s_energy=60..,s_launch_type=3},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=60..,s_launch_type=3},nbt={SelectedItemSlot:0}] s_energy 60

execute as @a[scores={s_launch=1..,s_energy=70..,s_launch_type=4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=70..,s_launch_type=4},nbt={SelectedItemSlot:0}] s_energy 70

execute as @a[scores={s_launch=1..,s_energy=100..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=100..,s_launch_type=5},nbt={SelectedItemSlot:0}] s_energy 100

execute as @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
scoreboard players remove @a[scores={s_launch=1..,s_energy=120..,s_launch_type=6},nbt={SelectedItemSlot:0}] s_energy 120

# ultimate hint
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 快跟他拉开距离!"]
execute as @a[scores={s_launch=1..,s_launch_type=103,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=103,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 快跟他拉开距离!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=red] run tellraw @a[team=!red] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]

execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级灰羊羊 ","color":"gray"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级紫羊羊 ","color":"dark_purple"}," 快跟他拉开距离!"]
execute as @a[scores={s_launch=1..,s_launch_type=103,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 随他进攻!"]
execute as @a[scores={s_launch=1..,s_launch_type=103,s_ulti_dura=0},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级柠羊羊 ","color":"green"}," 快跟他拉开距离!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
execute as @a[scores={s_launch=1..,s_launch_type=201},nbt={SelectedItemSlot:0},team=blue] run tellraw @a[team=!blue] [">> ",{"selector":"@s"}," 释放了",{"text":" 超级蓝羊羊 ","color":"blue"}," 小心躲避!"]
# shoot ultimate
execute as @a[scores={s_launch=1..,s_launch_type=101,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/gray/main
execute as @a[scores={s_launch=1..,s_launch_type=102,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/purple/main
execute as @a[scores={s_launch=1..,s_launch_type=103,s_ulti_dura=0},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/type/lime/main
execute as @a[scores={s_launch=1..,s_launch_type=201..},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_launch_type=201..},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:ultimate/end

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
function sheep:change_color
function sheep:ultimate/tick













# sheep effect
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
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark] at @s run effect give @e[distance=..3,type=!player,tag=monster] minecraft:slowness 1 3 true
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark_red] at @s run effect give @a[distance=..3,team=blue] minecraft:slowness 1 3 false
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark_blue] at @s run effect give @a[distance=..3,team=red] minecraft:slowness 1 3 false
execute as @e[scores={s_web_time=1..},tag=sheep_web_mark,tag=!sheep_web_mark_blue,tag=!sheep_web_mark_red] at @s run effect give @a[distance=..3] minecraft:slowness 1 2 false
kill @e[scores={s_web_time=101..}]


# lime
#scoreboard players add @e[tag=sheep_type_lime,scores={s_blow_time=1..}] s_ulti_inter 1
#execute as @e[tag=sheep_type_lime,tag=sheep_team_red,scores={s_blow_time=1..,s_ulti_inter=10}] at @s run effect give @a[team=red,distance=..5] minecraft:regeneration 2 1 true
#execute as @e[tag=sheep_type_lime,tag=sheep_team_blue,scores={s_blow_time=1..,s_ulti_inter=10}] at @s run effect give @a[team=blue,distance=..5] minecraft:regeneration 2 1 true
#execute as @e[tag=sheep_type_lime,tag=!sheep_team_blue,tag=!sheep_team_red,scores={s_blow_time=1..,s_ulti_inter=10}] at @s run effect give @a[distance=..5] minecraft:regeneration 2 1 true
#scoreboard players set @e[tag=sheep_type_lime,scores={s_blow_time=1..,s_ulti_inter=20..}] s_ulti_inter 0

#execute as @e[tag=sheep_type_lime,scores={s_blow_time=1..}] at @s run particle minecraft:happy_villager ~ ~1 ~ 2 1 2 1 1
#team join red @e[tag=sheep_type_lime,tag=sheep_team_red,team=]
#team join blue @e[tag=sheep_type_lime,tag=sheep_team_blue,team=]
##effect give @e[tag=sheep_type_lime,scores={s_blow_time=1..}] minecraft:glowing 1 0 true


# blue
scoreboard players add @e[tag=sheep_type_blue,scores={s_blow_time=1..}] s_ulti_inter 1
scoreboard players add @e[tag=sheep_type_blue,scores={s_blow_time=1..}] s_ulti_dura 1
execute as @e[tag=sheep_type_blue,scores={s_blow_time=1..,s_ulti_inter=10}] at @s run function sheep:ultimate/type/blue/summon_sheep
scoreboard players set @e[tag=sheep_type_blue,scores={s_blow_time=1..,s_ulti_inter=10..}] s_ulti_inter 0
kill @e[tag=sheep_type_blue,scores={s_blow_time=1..,s_ulti_dura=200..}]

team join red @e[tag=sheep_type_blue,tag=sheep_team_red,team=]
team join blue @e[tag=sheep_type_blue,tag=sheep_team_blue,team=]
