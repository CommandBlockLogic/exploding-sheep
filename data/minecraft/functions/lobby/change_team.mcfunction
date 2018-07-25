# lobby/change_team

# text
execute as @e[tag=system_lobby_mark_join,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..8] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_lobby_mark_join,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..8] run data merge entity @s {CustomNameVisible:0}
# enter team
execute at @e[tag=system_lobby_mark_join_red] run tag @e[tag=!sheep_team_red,scores={s_blow_time=1},distance=..3,limit=1] add system_join_red_temp
execute at @e[tag=system_lobby_mark_join_blue] run tag @e[tag=!sheep_team_blue,scores={s_blow_time=1},distance=..3,limit=1] add system_join_blue_temp
execute at @e[tag=system_lobby_mark_join_gray] run tag @e[tag=sheep_team_blue,scores={s_blow_time=1},distance=..3,limit=1] add system_join_gray_temp
execute at @e[tag=system_lobby_mark_join_gray] run tag @e[tag=sheep_team_red,scores={s_blow_time=1},distance=..3,limit=1] add system_join_gray_temp
execute as @a if score @s s_id = @e[tag=system_join_red_temp,limit=1] s_thrower_id run tag @s add player_join_red
execute as @a if score @s s_id = @e[tag=system_join_blue_temp,limit=1] s_thrower_id run tag @s add player_join_blue
execute as @a if score @s s_id = @e[tag=system_join_gray_temp,limit=1] s_thrower_id run tag @s add player_join_gray
team join red @a[tag=player_join_red]
team join blue @a[tag=player_join_blue]
team leave @a[tag=player_join_gray]
execute if entity @a[tag=player_join_red] run tellraw @a [">> ",{"selector":"@a[tag=player_join_red]"},"加入了§c红队§r"]
execute if entity @a[tag=player_join_blue] run tellraw @a [">> ",{"selector":"@a[tag=player_join_blue]"},"加入了§9蓝队§r"]
execute if entity @a[tag=player_join_gray] run tellraw @a [">> ",{"selector":"@a[tag=player_join_gray]},"选择了§7旁观§r"]
# clear sheep tag
#execute as @e[tag=sheep_sheep] 


tag @e[tag=system_join_red_temp] remove system_join_red_temp
tag @e[tag=system_join_blue_temp] remove system_join_blue_temp
tag @e[tag=system_join_gray_temp] remove system_join_gray_temp
tag @a[tag=player_join_red] remove player_join_red
tag @a[tag=player_join_blue] remove player_join_blue
tag @a[tag=player_join_gray] remove player_join_gray