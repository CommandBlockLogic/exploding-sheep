# player_death/main

# clear
scoreboard players set @s death 0
# set death time
execute store result score @s death_time run scoreboard players get @s death_time_max
# reduce death count
execute if entity @s[team=red] run scoreboard players remove system_red_death_count system 1
execute if entity @s[team=blue] run scoreboard players remove system_blue_death_count system 1