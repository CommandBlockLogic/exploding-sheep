# game_mode/group/get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect




# cal time
scoreboard players remove system_game_time system 1
# display time
execute store result bossbar minecraft:score_time value run scoreboard players get system_game_time system
scoreboard players operation system_second system = system_game_time system
scoreboard players operation system_second system /= system_twenty system
scoreboard players operation system_minute system = system_second system
scoreboard players operation system_minute system /= system_sixty system
scoreboard players operation system_second system %= system_sixty system
execute if score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":0",{"score":{"name":"system_second","objective":"system"}}]
execute unless score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":",{"score":{"name":"system_second","objective":"system"}}]





# summon center
execute if score summon_center_time system matches 1.. run scoreboard players remove summon_center_time system 1
execute if score summon_center_time system matches 1.. run function game_mode/group/get_score/summon_core

# change owner
execute store result score center_block_count system at @e[tag=system_core_mark_center,limit=1] run clone ~-4 ~-2 ~-4 ~4 ~1 ~4 ~-4 ~-2 ~-4 filtered #minecraft:concrete force
execute if score center_block_count system matches 0..3 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 1 run function game_mode/group/get_score/swap/find
execute if score center_block_count system matches 0..3 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 2 run function game_mode/group/get_score/swap/to_red
execute if score center_block_count system matches 0..3 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 3 run function game_mode/group/get_score/swap/to_blue

# add protect effect
execute if score center_block_count system matches ..50 run function game_mode/group/get_score/protect/tick
# hint
execute if score center_block_count system matches ..50 if score center_block_refreshed system matches 1 if score summon_center_time system matches ..10 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 2 run function game_mode/group/get_score/protect/hint_blue
execute if score center_block_count system matches ..50 if score center_block_refreshed system matches 1 if score summon_center_time system matches ..10 if score @e[tag=system_core_mark_center,limit=1] tower_status matches 3 run function game_mode/group/get_score/protect/hint_red
execute if score center_block_count system matches ..50 if score center_block_refreshed system matches 1 if score summon_center_time system matches ..10 run scoreboard players set center_block_refreshed system 0





# check end
execute if score system_game_time system matches ..0 run function game_mode/group/get_score/end
