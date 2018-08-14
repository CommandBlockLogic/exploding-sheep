# sheep:fly/tracking2

# find target
tag @s add sheep_temp
execute at @s if score @s s_target_id matches 1.. at @s as @a[distance=..50] if score @s s_id = @e[tag=sheep_temp,limit=1] s_target_id run tag @s add player_temp
execute at @s if score @s s_target_id matches 0 run tag @e[tag=monster_target,distance=..20] add player_temp

execute at @s facing entity @e[tag=player_temp,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~

# detect and tp
execute at @s positioned ^ ^ ^0.35 unless block ~ ~ ~ #sheep:chuantou run tag @s add sheep_collision
execute at @s[scores={s_flying_time=70..}] positioned ^ ^ ^0.35 positioned ~ ~-1 ~ if entity @a[gamemode=!spectator,distance=..1] run tag @s add sheep_collision
execute at @s[scores={s_flying_time=70..}] positioned ^ ^ ^0.35 positioned ~ ~-1 ~ if entity @e[tag=monster,distance=..1] run tag @s add sheep_collision
execute at @s unless entity @e[tag=player_temp,distance=..20] run tag @s add sheep_collision
execute at @s[tag=!sheep_collision] positioned ^ ^ ^0.35 run tp @s ~ ~ ~

# clear
tag @e[tag=sheep_collision] remove sheep_attr_tracking
scoreboard players set @e[tag=sheep_collision] s_blow_time 1
tag @e[tag=sheep_collision] remove sheep_collision
tag @e[tag=sheep_temp] remove sheep_temp
tag @e[tag=player_temp] remove player_temp