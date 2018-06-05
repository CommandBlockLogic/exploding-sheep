# get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# check end
execute if score system_red_score system matches 500.. run function get_score/red_win
execute if score system_blue_score system matches 500.. run function get_score/blue_win

# display score
scoreboard players add 红队 sidebar_score 0
scoreboard players add 蓝队 sidebar_score 0
execute if score system_red_score system matches 1.. run scoreboard players operation 红队 sidebar_score += system_red_score system
execute if score system_blue_score system matches 1.. run scoreboard players operation 蓝队 sidebar_score += system_blue_score system
execute if score system_red_score system matches 1.. run title @a[team=blue] actionbar ["水晶正在遭受攻击!"]
execute if score system_blue_score system matches 1.. run title @a[team=red] actionbar ["水晶正在遭受攻击!"]
execute if score system_red_score system matches 1.. run scoreboard players set system_red_score system 0
execute if score system_blue_score system matches 1.. run scoreboard players set system_blue_score system 0




# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:blue_concrete_powder keep
scoreboard players set @e[scores={system_time=400..}] system_time 0