# player_death/tick

# dead
execute as @a[scores={death=1..}] run function player_death/main
# respawn
execute positioned -176 8 -124 as @a[scores={death2=1..},dx=20,dy=10,dz=30] run function player_death/lobby
# decrease time
scoreboard players remove @a[scores={death_time=1..}] death_time 1