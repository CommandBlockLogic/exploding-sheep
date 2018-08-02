# sheep:fly/tick

# set force
scoreboard players set @s s_ay -50
scoreboard players set @s[tag=sheep_type_fast,scores={s_blow_time=0}] s_ay 0
scoreboard players set @s[tag=sheep_type_ball] s_ay -17
scoreboard players operation @s s_vy += @s s_ay

# remove no speed decay time
scoreboard players remove @s[scores={s_no_decay_time=1..}] s_no_decay_time 1

# calculate split speed, save to s_temp2,3,4
function sheep:fly/split_speed
# collision
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
execute if entity @s run function sheep:fly/move
