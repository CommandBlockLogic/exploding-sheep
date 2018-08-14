# sheep:ultimate/sheep_ulti

# s_ulti_sheep 0-100为颜色变换 100以上为颜色不变

# change_color
data merge entity @s[scores={s_ulti_sheep=1}] {Color:8}
data merge entity @s[scores={s_ulti_sheep=4}] {Color:10}
data merge entity @s[scores={s_ulti_sheep=7}] {Color:5}
data merge entity @s[scores={s_ulti_sheep=11}] {Color:11}

# add score
scoreboard players add @s s_ulti_sheep 1
scoreboard players set @s[scores={s_ulti_sheep=15..100}] s_ulti_sheep 1



# find owner and tp
tag @s add sheep_temp
execute as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run tag @s add player_temp
execute at @a[tag=player_temp,limit=1] anchored eyes rotated ~ 0 run tp @e[scores={s_ulti_sheep=..100}] ^ ^0.3 ^2 ~ ~
execute at @a[tag=player_temp,limit=1] run tp @s[scores={s_ulti_sheep=101..}] ~ ~2.5 ~ ~ ~
execute unless entity @a[tag=player_temp] run kill @s
tag @a[tag=player_temp] remove player_temp
tag @s remove sheep_temp
