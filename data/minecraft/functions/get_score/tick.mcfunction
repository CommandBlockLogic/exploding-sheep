# get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# check end
execute if score 红队 system_info matches 500.. run function get_score/red_win
execute if score 蓝队 system_info matches 500.. run function get_score/blue_win

# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:blue_concrete_powder keep
scoreboard players set @e[scores={system_time=400..}] system_time 0