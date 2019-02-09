# sheep:sheep_effect/ice/exclude_owner
tag @s add sheep_temp
execute at @s as @a[distance=..5] if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run tag @s[tag=sheep_ice_temp] remove sheep_ice_temp
tag @s remove sheep_temp
