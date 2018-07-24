# sheep:ultimate/type/purple/tick

# scores
scoreboard players add @s s_ulti_dura 1
scoreboard players set @s s_energy 0

# find center and sheep
tag @s add player_temp
execute as @e[tag=sheep_ulti_purple] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run tag @s add sheep_temp


# rotate
execute at @s run tp @e[tag=sheep_temp,tag=sheep_ulti_purple_mark,limit=1] ~ ~0.5 ~
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_s] at @s rotated as @a[tag=player_temp,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_mark] at @s rotated ~ ~ run tp @e[tag=sheep_temp,tag=sheep_ulti_purple_s1,limit=1] ^ ^ ^2
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_mark] at @s rotated ~120 ~ run tp @e[tag=sheep_temp,tag=sheep_ulti_purple_s2,limit=1] ^ ^ ^2
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_mark] at @s rotated ~240 ~ run tp @e[tag=sheep_temp,tag=sheep_ulti_purple_s3,limit=1] ^ ^ ^2
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_mark] at @s rotated ~10 ~ run tp @s ~ ~ ~ ~ ~



# clear
tag @e[tag=sheep_temp] remove sheep_temp
tag @s remove player_temp

# end
execute as @s[scores={s_ulti_dura=200..}] run function sheep:ultimate/end