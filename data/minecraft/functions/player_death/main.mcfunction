# player_death/main

# clear
scoreboard players set @s death 0
# set death time
execute store result score @s death_time run scoreboard players get @s death_time_max
