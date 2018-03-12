# ready/main

# reset
function minecraft:reset/without_team

# join spec
team join spec @a[team=]

# save players count
scoreboard players set game_player_count_red system 0
scoreboard players set game_player_count_blue system 0
execute as @a[team=red] run scoreboard players add game_player_count_red system 1
execute as @a[team=blue] run scoreboard players add game_player_count_blue system 1

# set hp (=60+40*(player count))
# hp per player
scoreboard players set game_hp_red system 40
scoreboard players set game_hp_blue system 40
scoreboard players operation game_hp_red system *= game_player_count_blue system
scoreboard players operation game_hp_blue system *= game_player_count_red system
# hp base
scoreboard players add game_hp_red system 60
scoreboard players add game_hp_blue system 60
# hp half
scoreboard players set game_const system 2
execute store result score game_hp_half_red system run scoreboard players get game_hp_red system
execute store result score game_hp_half_blue system run scoreboard players get game_hp_blue system
scoreboard players operation game_hp_half_red system /= game_const system
scoreboard players operation game_hp_half_blue system /= game_const system

# set player's bullet
scoreboard players set @a s_max_bullet 8
scoreboard players set @a s_launch_type 1
# set items
execute as @a[team=!spec] run function minecraft:item/give_wool_armor
scoreboard players set @a[team=!spec] keep_item 1

# set game phase
scoreboard players set game_phase system 1

# bossbar
bossbar create game:red [{"text":"红石","color":"red"},{"text":"部落首领","color":"white"}]
bossbar create game:blue [{"text":"青金石","color":"blue"},{"text":"部落首领","color":"white"}]
execute store result bossbar game:red max run scoreboard players get game_hp_red system
execute store result bossbar game:blue max run scoreboard players get game_hp_blue system
execute store result bossbar game:red value run scoreboard players get game_hp_red system
execute store result bossbar game:blue value run scoreboard players get game_hp_blue system
bossbar set game:red color red
bossbar set game:blue color blue
bossbar set game:red players @a
bossbar set game:blue players @a

# summon target
summon minecraft:villager 76 46 51 {CustomName:"[{\"text\":\"红石\",\"color\":\"red\"},{\"text\":\"部落首领\",\"color\":\"gray\"}]",CustomNameVisible:true,Tags:["game_target_red","game_target","game"],Rotation:[90f,0f],NoAI:1,Invulnerable:1}
summon minecraft:villager 35 47 51 {CustomName:"[{\"text\":\"青金石\",\"color\":\"blue\"},{\"text\":\"部落首领\",\"color\":\"gray\"}]",CustomNameVisible:true,Tags:["game_target_blue","game_target","game"],Rotation:[-90f,0f],NoAI:1,Invulnerable:1}

# fill barrier
#

# tp player
tp @a[team=blue] 11 39 50
tp @a[team=red] 94 38 51
tp @a[team=spec] 50 40 50

# spawnpoint
spawnpoint @a 11 60 11

# message
title @a times 10 100 10
title @a title ["选择你的羊！"]
title @a subtitle ["与其并肩战斗吧！"]
tellraw @a [">> 10秒后游戏开始！"]
scoreboard players reset * display