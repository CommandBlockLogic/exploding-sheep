# game_mode/group/get_score/swap/find

execute as @a if score @s s_id = @e[tag=system_core_mark_center,limit=1] destory_id if entity @s[team=red] run function game_mode/group/get_score/swap/to_red
execute as @a if score @s s_id = @e[tag=system_core_mark_center,limit=1] destory_id if entity @s[team=blue] run function game_mode/group/get_score/swap/to_blue