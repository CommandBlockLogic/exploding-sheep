# sheep:ultimate/end

# class back
execute store result score @s s_class run scoreboard players get @s s_class_2
scoreboard players set @s s_launch_type 1

# end ultimate mode
scoreboard players set @s s_ulti_time 0
scoreboard players set @s s_ulti_dura 0
tag @s add player_temp
execute as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run tp @s ~ -1000 ~
execute as @e[tag=sheep_ulti] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run kill @s
execute as @e[tag=sheep_ulti_purple] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run tp @s ~ -1000 ~
execute as @e[tag=sheep_ulti_purple] if score @s s_thrower_id = @a[tag=player_temp,limit=1] s_id run kill @s

tag @a[tag=player_temp] remove player_temp