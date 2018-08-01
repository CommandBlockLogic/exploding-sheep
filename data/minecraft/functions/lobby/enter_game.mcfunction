# lobby/enter_game

# text
execute as @e[tag=system_lobby_mark_enter_hint,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..15] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_lobby_mark_enter_hint,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..15] run data merge entity @s {CustomNameVisible:0}


# first step tag and hint
execute at @e[tag=system_lobby_mark_enter] as @a[distance=..0.3,tag=!player_enter_game,scores={death_time=1..}] run function lobby/enter_game_fail
execute as @a[tag=player_enter_game] at @s unless entity @e[tag=system_lobby_mark_enter,distance=..0.3] run tag @s remove player_enter_game

# hint
execute at @e[tag=system_lobby_mark_enter] if score game_status system matches 0 run tellraw @a[distance=..0.3,scores={death_time=0}] [">> 自由模式 随意探索地图吧! Q键丢掉石砖回城!"]
# enter game
execute at @e[tag=system_lobby_mark_enter] run scoreboard players set @a[distance=..0.3,scores={death_time=0}] death_time_tp 0
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=blue,scores={death_time=0}] -36 15 -40 -90 0
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=red,scores={death_time=0}] 40 14 34 100 0
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=,scores={death_time=0}] 1 23 -1


