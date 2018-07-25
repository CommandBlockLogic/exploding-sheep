# lobby/enter_game

# text
execute as @e[tag=system_class_mark,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..5] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_class_mark,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..5] run data merge entity @s {CustomNameVisible:0}

# hint
execute at @e[tag=system_lobby_mark_enter] if score game_status system matches 0 run tellraw @a[distance=..0.3,team=] [">> 自由模式 随意探索地图吧! Q键丢掉石砖回城!"]

# enter game
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=blue] -36 15 -40 -90 0
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=red] 40 14 34 100 0
execute at @e[tag=system_lobby_mark_enter] run tp @a[distance=..0.3,team=] 1 23 -1


