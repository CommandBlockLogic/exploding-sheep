# lobby/change_team

# text
execute as @e[tag=system_lobby_mark_join,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..8] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_lobby_mark_join,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..8] run data merge entity @s {CustomNameVisible:0}
# enter team
execute at @e[tag=system_lobby_mark_join_red] run tag @e[tag=sheep_team_blue,scores={s_blow_time=1},distance=..4,limit=1] add system_join_red_temp
execute at @e[tag=system_lobby_mark_join_blue] run tag @e[tag=sheep_team_red,scores={s_blow_time=1},distance=..4,limit=1] add system_join_blue_temp
execute as @a if score @s s_id = @e[tag=system_join_red_temp,limit=1] s_thrower_id run team join red @s
execute as @a if score @s s_id = @e[tag=system_join_red_temp,limit=1] s_thrower_id run tellraw @a [">> ",{"selector":"@s"},"加入了§c红队§r"]
execute as @a if score @s s_id = @e[tag=system_join_blue_temp,limit=1] s_thrower_id run team join blue @s
execute as @a if score @s s_id = @e[tag=system_join_blue_temp,limit=1] s_thrower_id run tellraw @a [">> ",{"selector":"@s"},"加入了§9蓝队§r"]
tag @e[tag=system_join_red_temp] remove system_join_red_temp
tag @e[tag=system_join_blue_temp] remove system_join_blue_temp