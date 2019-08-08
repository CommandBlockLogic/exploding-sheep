# game_mode/group/get_score/swap/to_red

function game_mode/core/center/clear
scoreboard players set @e[tag=system_core_mark_center] tower_status 3
execute as @e[tag=system_core_mark_center] at @s run fill ~-2 ~-2 ~-2 ~2 ~-2 ~2 minecraft:red_concrete_powder keep
scoreboard players set summon_center_time system 120

scoreboard players set center_block_count system 10
scoreboard players set center_block_refreshed system 1

title @a times 0 60 10
title @a title [""]
title @a subtitle [{"text":"红队","color":"red"},{"text":"夺走了中央水晶!","color":"white"}]
tellraw @a [">> ",{"text":"红队","color":"red"},"夺走了中央水晶!"]
bossbar set minecraft:score_time color red