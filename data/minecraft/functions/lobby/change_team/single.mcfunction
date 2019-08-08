# lobby/change_team/single

# enter team
execute at @e[tag=system_lobby_mark_join_yellow] run tag @e[tag=!sheep_team_yellow,scores={s_blow_time=2},distance=..3,limit=1] add system_join_yellow_temp
execute at @e[tag=system_lobby_mark_join_gray] run tag @e[tag=sheep_team_yellow,scores={s_blow_time=2},distance=..3,limit=1] add system_join_gray_temp
execute as @a if score @s s_id = @e[tag=system_join_yellow_temp,limit=1] s_thrower_id run tag @s add player_join_yellow
execute as @a if score @s s_id = @e[tag=system_join_gray_temp,limit=1] s_thrower_id run tag @s add player_join_gray
team join yellow @a[tag=player_join_yellow]
team leave @a[tag=player_join_gray]
execute if entity @a[tag=player_join_yellow] run tellraw @a [">> ",{"selector":"@a[tag=player_join_yellow]"},"加入了§e游戏§r"]
execute if entity @a[tag=player_join_gray] run tellraw @a [">> ",{"selector":"@a[tag=player_join_gray]"},"选择了§7旁观§r"]
# clear sheep tag
execute if entity @a[tag=player_join_yellow] as @e[tag=sheep_sheep] if score @s s_thrower_id = @a[tag=player_join_yellow,limit=1] s_id run tag @s add sheep_team_yellow
execute if entity @a[tag=player_join_gray] as @e[tag=sheep_sheep,tag=sheep_team_yellow] if score @s s_thrower_id = @a[tag=player_join_gray,limit=1] s_id run tag @s remove sheep_team_yellow

# clear
tag @e[tag=system_join_yellow_temp] remove system_join_yellow_temp
tag @e[tag=system_join_gray_temp] remove system_join_gray_temp
tag @a[tag=player_join_yellow] remove player_join_yellow
tag @a[tag=player_join_gray] remove player_join_gray