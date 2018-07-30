# get_score/public/game_tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect


# cal time
scoreboard players remove system_game_time system 1
# display time
execute store result bossbar minecraft:score_time value run scoreboard players get system_game_time system
scoreboard players operation system_second system = system_game_time system
scoreboard players operation system_second system /= system_twenty system
scoreboard players operation system_minute system = system_second system
scoreboard players operation system_minute system /= system_sixty system
scoreboard players operation system_second system %= system_sixty system
execute if score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":0",{"score":{"name":"system_second","objective":"system"}}]
execute unless score system_second system matches 0..9 run bossbar set minecraft:score_time name ["剩余时间   ",{"score":{"name":"system_minute","objective":"system"}},":",{"score":{"name":"system_second","objective":"system"}}]


# display score
execute store result score 红队水晶砂 sidebar_score run scoreboard players get system_red_score system
execute store result score 蓝队水晶砂 sidebar_score run scoreboard players get system_blue_score system

# summon core
function get_score/public/summon_core