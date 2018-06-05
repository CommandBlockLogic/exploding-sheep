# free/tick

# class
function lobby/change_class
# team
function lobby/change_team
# enter game
function lobby/enter_game
# effect
function lobby/effect


# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_red,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:red_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-1 ~ ~-2 ~1 ~ ~2 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_blue,scores={system_time=400..}] run fill ~-2 ~ ~-1 ~2 ~ ~1 minecraft:blue_concrete_powder keep
execute at @e[tag=system_core_mark_purple,scores={system_time=400..}] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:purple_concrete_powder keep
scoreboard players set @e[scores={system_time=400..}] system_time 0

