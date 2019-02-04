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
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_mark] at @s rotated ~8 ~ run tp @s ~ ~ ~ ~ ~

# kill
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_s,tag=sheep_team_red] at @s run tag @a[distance=..1,team=!red] add player_harmed
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_s,tag=sheep_team_blue] at @s run tag @a[distance=..1,team=!blue] add player_harmed
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_s,tag=!sheep_team_blue,tag=!sheep_team_red] at @s run tag @a[distance=..1] add player_harmed
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_s] at @s run tag @e[tag=monster,tag=!monster_fucker,distance=..1] add ms_healed
execute as @e[tag=sheep_temp,tag=sheep_ulti_purple_s] at @s run tag @e[tag=monster_fucker,distance=..1] add ms_harmed
execute as @a[tag=player_harmed] store result score @s s_thrower_id run scoreboard players get @e[tag=sheep_temp,limit=1] s_thrower_id
execute as @a[tag=player_harmed] store result score @s s_sheep_type run scoreboard players get @e[tag=sheep_temp,limit=1] s_sheep_type
scoreboard players set @a[tag=player_harmed] s_kill_time 0
effect give @a[tag=player_harmed] minecraft:instant_damage 1 0
effect give @e[tag=ms_healed] minecraft:instant_health 1 0
effect give @e[tag=ms_harmed] minecraft:instant_damage 1 0
tag @a[tag=player_harmed] remove player_harmed
tag @a[tag=ms_harmed] remove ms_harmed
tag @a[tag=ms_healed] remove ms_healed


# clear
tag @e[tag=sheep_temp] remove sheep_temp
tag @s remove player_temp

# end
execute as @s[scores={s_ulti_dura=200..}] run function sheep:ultimate/end