# lobby/change_mode

scoreboard players add game_mode_status system 0

# change carpet and name
execute if score game_mode_status system matches 0 run fill -162 9 -123 -157 9 -117 minecraft:yellow_carpet replace minecraft:red_carpet
execute if score game_mode_status system matches 0 run fill -171 9 -120 -176 9 -114 minecraft:yellow_carpet replace minecraft:blue_carpet
execute if score game_mode_status system matches 0 as @e[tag=system_lobby_mark_join_red] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§e游戏§r\"]"}
execute if score game_mode_status system matches 0 as @e[tag=system_lobby_mark_join_blue] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§e游戏§r\"]"}

execute if score game_mode_status system matches 1 run fill -162 9 -123 -157 9 -117 minecraft:red_carpet replace minecraft:yellow_carpet
execute if score game_mode_status system matches 1 run fill -171 9 -120 -176 9 -114 minecraft:blue_carpet replace minecraft:yellow_carpet
execute if score game_mode_status system matches 1 as @e[tag=system_lobby_mark_join_red] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§c红石部落§r\"]"}
execute if score game_mode_status system matches 1 as @e[tag=system_lobby_mark_join_blue] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§9青金石部落§r\"]"}


# change game mark
scoreboard players add game_mode_status system 10
execute if score game_mode_status system matches 10 run scoreboard players set game_mode_status system 1
execute if score game_mode_status system matches 11 run scoreboard players set game_mode_status system 0


# tips
execute if score game_mode_status system matches 0 run tellraw @a [">> 游戏已变为部落模式, 请重新选择队伍并加入。"]
execute if score game_mode_status system matches 0 run team empty yellow
execute if score game_mode_status system matches 0 run setblock -178 8 -125 minecraft:stone_bricks replace
execute if score game_mode_status system matches 1 run tellraw @a [">> 游戏已变为单人模式。"]
execute if score game_mode_status system matches 1 run team join yellow @a[team=blue]
execute if score game_mode_status system matches 1 run team join yellow @a[team=red]
execute if score game_mode_status system matches 1 run team empty red
execute if score game_mode_status system matches 1 run team empty blue
execute if score game_mode_status system matches 1 run setblock -178 8 -125 minecraft:cracked_stone_bricks replace
