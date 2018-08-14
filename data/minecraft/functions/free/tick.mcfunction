# free/tick

# class
function lobby/change_class
# team
function lobby/change_team
# enter game
function lobby/enter_game
# effect
function lobby/effect



# death time
scoreboard players set @a death_time_max 0
scoreboard players set @a death_time 0



# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute as @e[tag=system_core_mark_red,scores={system_time=400..}] run function core/slice/red
execute as @e[tag=system_core_mark_blue,scores={system_time=400..}] run function core/slice/blue
execute as @e[tag=system_core_mark_purple,scores={system_time=400..}] run function core/slice/purple
scoreboard players set @e[tag=system_core_mark,scores={system_time=400..}] system_time 0


# back item
tp @a[scores={drop_brick=1..}] -166 9 -118
scoreboard players reset @a[scores={drop_brick=1..}] drop_brick

