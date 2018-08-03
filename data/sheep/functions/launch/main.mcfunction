# sheep:launch/main

# sound
playsound minecraft:entity.player.small_fall ambient @a ^ ^ ^0.5 1 0.5

# advancement
advancement grant @s[scores={s_launch_type=1},advancements={sheep:sheep/normal=false}] only sheep:sheep/normal
advancement grant @s[scores={s_launch_type=2},advancements={sheep:sheep/teleport=false}] only sheep:sheep/teleport
advancement grant @s[scores={s_launch_type=3},advancements={sheep:sheep/fast=false}] only sheep:sheep/fast
advancement grant @s[scores={s_launch_type=4},advancements={sheep:sheep/air=false}] only sheep:sheep/air
advancement grant @s[scores={s_launch_type=5},advancements={sheep:sheep/ice=false}] only sheep:sheep/ice
advancement grant @s[scores={s_launch_type=6},advancements={sheep:sheep/absorption=false}] only sheep:sheep/absorption
advancement grant @s[scores={s_launch_type=101},advancements={sheep:ultimate/gray=false}] only sheep:ultimate/gray
advancement grant @s[scores={s_launch_type=103},advancements={sheep:ultimate/lime=false}] only sheep:ultimate/lime
advancement grant @s[scores={s_launch_type=201},advancements={sheep:ultimate/blue=false}] only sheep:ultimate/blue
advancement grant @s[scores={s_launch_type=1001},advancements={sheep:speical_sheep/volleyball=false}] only sheep:speical_sheep/volleyball
advancement grant @s[scores={s_launch_type=1002},advancements={sheep:speical_sheep/football=false}] only sheep:speical_sheep/football

# summon marker
summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["sheep_mark"]}

# summon sheep
execute if entity @s[scores={s_launch_type=1}] run function sheep:launch/type/normal
execute if entity @s[scores={s_launch_type=2}] run function sheep:launch/type/teleport
execute if entity @s[scores={s_launch_type=3}] run function sheep:launch/type/fast
execute if entity @s[scores={s_launch_type=4}] run function sheep:launch/type/air
execute if entity @s[scores={s_launch_type=5}] run function sheep:launch/type/web
execute if entity @s[scores={s_launch_type=6}] run function sheep:launch/type/heal
execute if entity @s[scores={s_launch_type=101}] run function sheep:launch/type/gray
execute if entity @s[scores={s_launch_type=103}] run function sheep:launch/type/lime
execute if entity @s[scores={s_launch_type=201}] run function sheep:launch/type/blue
execute if entity @s[scores={s_launch_type=1001}] run function sheep:launch/type/volleyball
execute if entity @s[scores={s_launch_type=1002}] run function sheep:launch/type/football


# turn the sheep's face
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=sheep_mark,limit=1]

# give sheep v0
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vx run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[1] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[1] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vy run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vz run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1


# add player's id
execute store result score @e[tag=sheep_new,limit=1] s_thrower_id run scoreboard players get @s s_id
# add player's team
execute if entity @s[team=red] run tag @e[tag=sheep_new,limit=1] add sheep_team_red
execute if entity @s[team=blue] run tag @e[tag=sheep_new,limit=1] add sheep_team_blue
# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0

# kill marker and remove temp tag
kill @e[tag=sheep_mark]
tag @e[tag=sheep_new] remove sheep_new