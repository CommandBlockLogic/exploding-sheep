# sheep:ultimate/type/lime/effect

playsound minecraft:item.bottle.fill ambient @a ~ ~ ~ 1 0.5
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_lime_mark"]}
execute if entity @s[tag=sheep_team_red] run scoreboard players add @a[distance=..8,team=red] s_energy 50
execute if entity @s[tag=sheep_team_blue] run scoreboard players add @a[distance=..8,team=blue] s_energy 50

execute if entity @s[tag=!sheep_team_blue,tag=!sheep_team_red] if entity @a[distance=..8] run tag @s add sheep_temp
execute if entity @s[tag=!sheep_team_blue,tag=!sheep_team_red] as @a[distance=..8] if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run tag @s add player_temp
scoreboard players add @a[tag=player_temp] s_energy 50
tag @a[tag=player_temp] remove player_temp
tag @e[tag=sheep_temp] remove sheep_temp