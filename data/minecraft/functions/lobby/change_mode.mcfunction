# lobby/change_mode

scoreboard players add game_mode_status system 0

# change carpet and name
execute if score game_mode_status system matches 0 run fill -162 9 -123 -157 9 -117 minecraft:yellow_carpet replace minecraft:red_carpet
execute if score game_mode_status system matches 0 run fill -171 9 -120 -176 9 -114 minecraft:yellow_carpet replace minecraft:blue_carpet
execute if score game_mode_status system matches 0 as @e[tag=system_lobby_mark_join_red] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§e游戏§r\"]"}
execute if score game_mode_status system matches 0 as @e[tag=system_lobby_mark_join_blue] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§e游戏§r\"]"}

execute if score game_mode_status system matches 1 run fill -162 9 -123 -157 9 -117 minecraft:red_carpet replace minecraft:yellow_carpet
execute if score game_mode_status system matches 1 run fill -171 9 -120 -176 9 -114 minecraft:blue_carpet replace minecraft:yellow_carpet
execute if score game_mode_status system matches 1 as @e[tag=system_lobby_mark_join_red] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§c红队§r\"]"}
execute if score game_mode_status system matches 1 as @e[tag=system_lobby_mark_join_blue] run data merge entity @s {CustomName:"[\"将小羊丢到这里加入§9蓝队§r\"]"}


# change game mark
scoreboard players add game_mode_status system 10
execute if score game_mode_status system matches 10 run scoreboard players set game_mode_status system 1
execute if score game_mode_status system matches 11 run scoreboard players set game_mode_status system 0


# tips
execute if score game_mode_status system matches 0 run tellraw @a [">> 游戏已变为组队模式, 请重新选择队伍并加入."]
# 所有为 '　' 的 Text，其实是过去想加边框的，但怎么加都丑，所以留为全角空格。
execute if score game_mode_status system matches 0 run setblock -174 9 -126 minecraft:wall_sign[facing=south]{Text1:"{\"text\":\"　\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function minecraft:lobby/change_mode\"}}",Text2:"{\"text\":\"\\u00a77\\u00a7l单人\\u00a7r\"}",Text3:"{\"text\":\"\\u00a7a\\u00a7l> \\u00a76\\u00a7l组队 \\u00a7a\\u00a7l<\\u00a7r\"}",Text4:"{\"text\":\"　\"}"} destroy
execute if score game_mode_status system matches 0 run team empty yellow

execute if score game_mode_status system matches 1 run tellraw @a [">> 游戏已变为单人模式."]
execute if score game_mode_status system matches 1 run setblock -174 9 -126 minecraft:wall_sign[facing=south]{Text1:"{\"text\":\"　\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function minecraft:lobby/change_mode\"}}",Text2:"{\"text\":\"\\u00a7a\\u00a7l> \\u00a76\\u00a7l单人 \\u00a7a\\u00a7l<\\u00a7r\"}",Text3:"{\"text\":\"\\u00a77\\u00a7l组队\\u00a7r\"}",Text4:"{\"text\":\"　\"}"} destroy
execute if score game_mode_status system matches 1 run team join yellow @a[team=blue]
execute if score game_mode_status system matches 1 run team join yellow @a[team=red]
execute if score game_mode_status system matches 1 run team empty red
execute if score game_mode_status system matches 1 run team empty blue