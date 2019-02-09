# lobby/start_game/tick

# text
execute as @e[tag=system_main_mode_mark,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..12] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_main_mode_mark,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..12] run data merge entity @s {CustomNameVisible:0}
execute as @e[tag=system_mode_mark,nbt=!{CustomNameVisible:1b}] at @s if entity @a[distance=..3.5] run data merge entity @s {CustomNameVisible:1}
execute as @e[tag=system_mode_mark,nbt={CustomNameVisible:1b}] at @s unless entity @a[distance=..3.5] run data merge entity @s {CustomNameVisible:0}

# change color
execute if score game_mode_status system matches 0 as @e[tag=system_mode_change_mark_single] run data merge entity @s {CustomName:"[\"切换 \",{\"text\":\"个人\",\"color\":\"white\"},\"/\",{\"text\":\"队伍\",\"color\":\"blue\"}]"}
execute if score game_mode_status system matches 0 as @e[tag=system_mode_change_mark_single] run tag @s add system_mode_change_mark_group
execute if score game_mode_status system matches 0 as @e[tag=system_mode_change_mark_single] run tag @s remove system_mode_change_mark_single
execute if score game_mode_status system matches 1 as @e[tag=system_mode_change_mark_group] run data merge entity @s {CustomName:"[\"切换 \",{\"text\":\"个人\",\"color\":\"yellow\"},\"/\",{\"text\":\"队伍\",\"color\":\"white\"}]"}
execute if score game_mode_status system matches 1 as @e[tag=system_mode_change_mark_group] run tag @s add system_mode_change_mark_single
execute if score game_mode_status system matches 1 as @e[tag=system_mode_change_mark_group] run tag @s remove system_mode_change_mark_group