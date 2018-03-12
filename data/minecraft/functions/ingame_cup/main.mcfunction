# ingame_cup/main

# set
scoreboard players set game_phase system 3

# message
title @a times 10 100 10
title @a title ["祭祀仪式启动！"]
execute if score game_hp_red system <= game_hp_half_red system run title @a subtitle [{"text":"红石部落","color":"red"},"首领启动了仪式"]
execute if score game_hp_blue system <= game_hp_half_blue system run title @a subtitle [{"text":"青金石部落","color":"blue"},"首领启动了仪式"]
execute if score game_hp_red system <= game_hp_half_red system run tellraw @a [">> ",{"text":"红石部落","color":"red"},"的玩家们, 快将小白羊投入大鼎来完成祭祀!"]
execute if score game_hp_blue system <= game_hp_half_blue system run tellraw @a [">> ",{"text":"青金石部落","color":"blue"},"的玩家们, 快将小白羊投入大鼎来完成祭祀!"]
tellraw @a [">> 在一分钟时间内, 丢进足够多的羊即可完成"]
# create cup
execute if score game_hp_red system <= game_hp_half_red system run function ingame_cup/cup/red1
execute if score game_hp_blue system <= game_hp_half_blue system run function ingame_cup/cup/blue1


# summon mark
summon minecraft:area_effect_cloud 55 38 51 {Duration:999999,Tags:["game","game_target","game_target_cup"]}

# cup hp(=40+20*(player count))
scoreboard players set game_hp_cup system 20
execute if score game_hp_red system <= game_hp_half_red system run scoreboard players operation game_hp_cup system *= game_player_count_red system
execute if score game_hp_blue system <= game_hp_half_blue system run scoreboard players operation game_hp_cup system *= game_player_count_blue system
# hp base
scoreboard players add game_hp_cup system 40
# hp max
execute store result score game_hp_cup_max system run scoreboard players get game_hp_cup system

# set cup type
execute if score game_hp_red system <= game_hp_half_red system run scoreboard players set game_cup_phase system 1
execute if score game_hp_blue system <= game_hp_half_blue system run scoreboard players set game_cup_phase system 6