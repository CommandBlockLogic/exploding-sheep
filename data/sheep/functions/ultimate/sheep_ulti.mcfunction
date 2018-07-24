# sheep:ultimate/sheep_ulti

# s_ulti_sheep 0-100为颜色变换 100以上为颜色不变

# change_color
data merge entity @s[scores={s_ulti_sheep=1}] {Color:8}
data merge entity @s[scores={s_ulti_sheep=4}] {Color:10}
data merge entity @s[scores={s_ulti_sheep=7}] {Color:1}
data merge entity @s[scores={s_ulti_sheep=11}] {Color:5}

# add score
scoreboard players add @s s_ulti_sheep 1
scoreboard players set @s[scores={s_ulti_sheep=15..100}] s_ulti_sheep 1



# find owner and tp
tag @s add sheep_temp
execute as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id at @s anchored eyes rotated ~ 0 run tp @e[tag=sheep_temp,scores={s_ulti_sheep=..100},limit=1] ^ ^0.3 ^2 ~ ~
execute as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id at @s run tp @e[tag=sheep_temp,scores={s_ulti_sheep=101..},limit=1] ~ ~2.5 ~ ~ ~
tag @s remove sheep_temp