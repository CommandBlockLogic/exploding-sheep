# player_death/main

# set death time
execute store result score @s death_time run scoreboard players get @s death_time_max
# reduce death count
execute if entity @s[team=red] run scoreboard players remove system_red_death_count system 1
execute if entity @s[team=blue] run scoreboard players remove system_blue_death_count system 1

# death message
tag @s add player_self
execute as @a if score @s s_id = @a[tag=player_self,limit=1] s_thrower_id run tag @s add player_killer
# message
execute if score @s killed_by_c matches 1.. if entity @a[tag=player_killer] run function player_death/message/kill_by_player
execute if score @s killed_by_c matches 1.. unless entity @a[tag=player_killer] run function player_death/message/kill_by_sheep
execute if score @s killed_by_c matches 0 if score @s fall_dis matches 30.. if entity @a[tag=player_killer] run function player_death/message/push_by_player
execute if score @s killed_by_c matches 0 if score @s fall_dis matches 30.. unless entity @a[tag=player_killer] run function player_death/message/push_by_sheep
execute if score @s killed_by_c matches 0 if score @s fall_dis2 matches 1.. run say @s
# clear
scoreboard players set @s death 0
scoreboard players set @s killed_by_c 0
tag @s remove player_self
tag @a[tag=player_killer] remove player_killer