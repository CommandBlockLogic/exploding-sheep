# sheep:ultimate/type/lime/launch_sheep

# sound
playsound minecraft:entity.player.small_fall ambient @a ^ ^ ^0.5 1 0.5

# add target
execute if entity @s[team=red] run tag @a[team=!red,gamemode=adventure,distance=1..8] add player_target
execute if entity @s[team=blue] run tag @a[team=!blue,gamemode=adventure,distance=1..8] add player_target
execute if entity @s[team=] run tag @a[gamemode=adventure,distance=1..8] add player_target
# summon sheep and add target id. max 5 players
execute unless entity @a[tag=player_target] run function sheep:launch/main
function sheep:ultimate/type/lime/summon_and_add_target
function sheep:ultimate/type/lime/summon_and_add_target
function sheep:ultimate/type/lime/summon_and_add_target
function sheep:ultimate/type/lime/summon_and_add_target
function sheep:ultimate/type/lime/summon_and_add_target
tag @a[tag=player_target] remove player_target

# add player's id
tag @s add player_temp
execute as @e[tag=sheep_new] store result score @s s_thrower_id run scoreboard players get @a[tag=player_temp,limit=1] s_id
tag @s remove player_temp
# add player's team
execute if entity @s[team=red] run tag @e[tag=sheep_new] add sheep_team_red
execute if entity @s[team=blue] run tag @e[tag=sheep_new] add sheep_team_blue
# initialize
scoreboard players set @e[tag=sheep_new] s_blow_time 0
scoreboard players set @e[tag=sheep_new] s_sheep_type 103

# remove temp tag
tag @e[tag=sheep_new] remove sheep_new