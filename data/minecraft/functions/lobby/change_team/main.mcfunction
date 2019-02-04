# lobby/change_team/main

# text
execute as @e[tag=system_lobby_mark_join,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..8] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_lobby_mark_join,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..8] run data merge entity @s {CustomNameVisible:0}

execute if score game_mode_status system matches 0 run function lobby/change_mode/group
execute if score game_mode_status system matches 1 run function lobby/change_mode/single