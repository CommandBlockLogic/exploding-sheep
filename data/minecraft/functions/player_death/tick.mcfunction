# player_death/tick

# dead
execute as @a[scores={death=1..}] run function player_death/main
# respawn
execute positioned -176 8 -124 as @a[scores={death2=1..},dx=20,dy=10,dz=30] run function player_death/lobby
# decrease time
scoreboard players remove @a[scores={death_time=1..}] death_time 1

# tp time
scoreboard players add @a[scores={death_time_tp=1..}] death_time_tp 1
execute if score game_status system matches 0 run scoreboard players set @a[scores={death_time_tp=1..}] death_time_tp 0
tellraw @a[scores={death_time_tp=300..}] [">> 5秒后将自动传送至战场."]
execute as @a[scores={death_time_tp=400..}] run function public/tp_game_spawn
scoreboard players set @a[scores={death_time_tp=400..}] death_time_tp 0