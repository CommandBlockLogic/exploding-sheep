# sheep:launch/main

# sound
playsound minecraft:entity.player.small_fall ambient @a ^ ^ ^0.5 1 0.5

# summon marker
summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["sheep_mark"]}

# summon sheep
execute if entity @s[scores={s_launch_type=1}] run function sheep:launch/type/normal
execute if entity @s[scores={s_launch_type=2}] run function sheep:launch/type/heavy
execute if entity @s[scores={s_launch_type=3}] run function sheep:launch/type/fast
execute if entity @s[scores={s_launch_type=4}] run function sheep:launch/type/air
execute if entity @s[scores={s_launch_type=5}] run function sheep:launch/type/web
execute if entity @s[scores={s_launch_type=6}] run function sheep:launch/type/heal
execute if entity @s[scores={s_launch_type=101}] run function sheep:launch/type/gray
execute if entity @s[scores={s_launch_type=201}] run function sheep:launch/type/orange
execute if entity @s[scores={s_launch_type=202}] run function sheep:launch/type/lime

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