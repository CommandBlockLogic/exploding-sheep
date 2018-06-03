# lobby/launch_sheep/main

# tag target player
execute positioned -166 10 -127 run tag @a[sort=random,distance=..15] add system_lobby_target

# summon sheep
execute positioned -166 10 -127 run function sheep:launch/type/normal
# turn the sheep's face
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=system_lobby_target,limit=1]
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ ~ 0

# summon marker
execute as @e[tag=sheep_new,limit=1] at @s run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["sheep_mark"]}







# give sheep v0
execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vx run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

scoreboard players set @e[tag=sheep_new,limit=1] s_vy 0

execute as @e[tag=sheep_mark,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=sheep_mark,limit=1] s_temp1 -= @e[tag=sheep_new,limit=1] s_temp1
execute store result score @e[tag=sheep_new,limit=1] s_vz run scoreboard players get @e[tag=sheep_mark,limit=1] s_temp1

# cal distance
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 100
execute as @e[tag=sheep_new,limit=1] store result score @s s_temp2 run data get entity @s Pos[2] 100
execute as @a[tag=system_lobby_target,limit=1] store result score @s s_temp1 run data get entity @s Pos[0] 100
execute as @a[tag=system_lobby_target,limit=1] store result score @s s_temp2 run data get entity @s Pos[2] 100
scoreboard players operation @e[tag=sheep_new,limit=1] s_temp1 -= @a[tag=system_lobby_target,limit=1] s_temp1
scoreboard players operation @e[tag=sheep_new,limit=1] s_temp2 -= @a[tag=system_lobby_target,limit=1] s_temp2
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp1 *= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp2 *= @s s_temp2
scoreboard players set @e[tag=sheep_new,limit=1] s_temp7 0
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 += @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 += @s s_temp2
execute as @e[tag=sheep_new,limit=1] run function lobby/launch/sqrt
# cal vy
scoreboard players set @e[tag=sheep_new,limit=1] s_temp1 4
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_temp7 /= @s s_temp1
execute as @e[tag=sheep_new,limit=1] run scoreboard players operation @s s_vy = @s s_temp7





# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0

# kill marker and remove temp tag
kill @e[tag=sheep_mark]
tag @e[tag=sheep_new] remove sheep_new
tag @a[tag=system_lobby_target] remove system_lobby_target