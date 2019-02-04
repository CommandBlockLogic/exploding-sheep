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



# back item
tp @a[scores={drop_brick=1..}] -166 9 -118
scoreboard players reset @a[scores={drop_brick=1..}] drop_brick

