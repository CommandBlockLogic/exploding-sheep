# sheep:fly/touch_x

# change x speed
scoreboard players set @s s_vz 0
# change z speed
function sheep:sheep/fly/decrease_vx

# tp to block center
execute align z run tp @s ~ ~ ~0.5