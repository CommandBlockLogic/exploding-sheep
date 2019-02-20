# lobby/launch_sheep/fixed_h

# tag target player
execute positioned ~ ~ ~ run tag @a[sort=random,distance=..20,limit=1] add system_lobby_target

# summon sheep
execute positioned ~ ~ ~ run function sheep:launch/type/normal

# turn the sheep's face
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ facing entity @a[tag=system_lobby_target,limit=1]
execute as @e[tag=sheep_new,limit=1] at @s run tp @s ~ ~ ~ ~ 0

# calculate coordinate difference
execute as @e[tag=sheep_new,limit=1] store result score var0 system_cal run data get entity @s Pos[0] 100
execute as @e[tag=sheep_new,limit=1] store result score var1 system_cal run data get entity @s Pos[1] 100
execute as @e[tag=sheep_new,limit=1] store result score var2 system_cal run data get entity @s Pos[2] 100
execute as @a[tag=system_lobby_target,limit=1] store result score var3 system_cal run data get entity @s Pos[0] 100
execute as @a[tag=system_lobby_target,limit=1] store result score var4 system_cal run data get entity @s Pos[1] 100
execute as @a[tag=system_lobby_target,limit=1] store result score var5 system_cal run data get entity @s Pos[2] 100
scoreboard players operation var3 system_cal -= var0 system_cal
scoreboard players operation var4 system_cal -= var1 system_cal
scoreboard players operation var5 system_cal -= var2 system_cal

# constant
# gravity unit:0.01block/(tick^2)
scoreboard players set const0 system_cal -5
# curve height unit:0.01block
scoreboard players set const1 system_cal 500
# two
scoreboard players set const_2 system_cal 2
# minus two
scoreboard players set const_minus_2 system_cal -2
# minus one
scoreboard players set const_minus_1 system_cal -1
# ten
scoreboard players set const_10 system_cal 10


# vy = sqrt(-2*g*(y_0+5))
scoreboard players set var11 system_cal 0
scoreboard players operation var11 system_cal = var4 system_cal
scoreboard players operation var11 system_cal += const1 system_cal
scoreboard players operation var11 system_cal *= const0 system_cal
scoreboard players operation var11 system_cal *= const_minus_2 system_cal
scoreboard players set var100 system_cal 0
scoreboard players operation var100 system_cal = var11 system_cal
function lobby/launch_sheep/sqrt_system
scoreboard players operation var11 system_cal = var100 system_cal

# vx vz = (vy+sqrt(-2*g*5))/(2*y_0) * x_0
scoreboard players set var10 system_cal 0
scoreboard players operation var10 system_cal = const_minus_2 system_cal
scoreboard players operation var10 system_cal *= const0 system_cal
scoreboard players operation var10 system_cal *= const1 system_cal
scoreboard players set var100 system_cal 0
scoreboard players operation var100 system_cal = var10 system_cal
function lobby/launch_sheep/sqrt_system
scoreboard players operation var10 system_cal = var100 system_cal
scoreboard players operation var10 system_cal *= const_minus_1 system_cal
scoreboard players operation var10 system_cal += var11 system_cal
scoreboard players operation var12 system_cal = var10 system_cal
scoreboard players operation var10 system_cal *= var3 system_cal
scoreboard players operation var12 system_cal *= var5 system_cal
scoreboard players operation var10 system_cal /= const_2 system_cal
scoreboard players operation var10 system_cal /= var4 system_cal
scoreboard players operation var12 system_cal /= const_2 system_cal
scoreboard players operation var12 system_cal /= var4 system_cal

scoreboard players operation var10 system_cal *= const_10 system_cal
scoreboard players operation var11 system_cal *= const_10 system_cal
scoreboard players operation var12 system_cal *= const_10 system_cal

# set speed
execute as @e[tag=sheep_new,limit=1] store result score @s s_vx run scoreboard players get var10 system_cal
execute as @e[tag=sheep_new,limit=1] store result score @s s_vy run scoreboard players get var11 system_cal
execute as @e[tag=sheep_new,limit=1] store result score @s s_vz run scoreboard players get var12 system_cal


# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0

# remove temp tag
tag @e[tag=sheep_new] remove sheep_new
tag @a[tag=system_lobby_target] remove system_lobby_target