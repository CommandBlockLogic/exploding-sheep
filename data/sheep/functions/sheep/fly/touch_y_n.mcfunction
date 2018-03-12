# sheep:fly/touch_y_n

# set vy ay
scoreboard players set @s s_vy 0
scoreboard players set @s s_ay 0
# xz speed
function sheep:sheep/fly/decrease_vxz_sqrt

# tp
execute align y run tp @s ~ ~ ~
execute at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~