# get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect

# core
execute if score system_game_time system matches 5940 run function core/clear/all
execute if score system_game_time system matches 5940 run function core/generate/home


# summon blocks
scoreboard players add @e[tag=system_core_mark] system_time 1
execute as @e[tag=system_core_mark_red,scores={system_time=400..}] run function core/slice/red
execute as @e[tag=system_core_mark_blue,scores={system_time=400..}] run function core/slice/blue
scoreboard players set @e[tag=system_core_mark,scores={system_time=400..}] system_time 0



# check end
execute if score system_game_time system matches ..0 if score system_red_score system > system_blue_score system run function get_score/red_win
execute if score system_game_time system matches ..0 if score system_red_score system < system_blue_score system run function get_score/blue_win
execute if score system_game_time system matches ..0 if score system_red_score system = system_blue_score system run function get_score/draw


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


# cal score
scoreboard players add system_red_score system 0
scoreboard players add system_blue_score system 0
execute as @e[tag=system_core_mark_blue,scores={core_destory=1..}] run scoreboard players operation system_red_score system += @s core_destory
execute as @e[tag=system_core_mark_red,scores={core_destory=1..}] run scoreboard players operation system_blue_score system += @s core_destory
execute as @e[tag=system_core_mark_blue,scores={core_destory=1..}] run title @a[team=blue] subtitle ["您的水晶正在遭受攻击!"]
execute as @e[tag=system_core_mark_blue,scores={core_destory=1..}] run title @a[team=blue] title [""]
execute as @e[tag=system_core_mark_red,scores={core_destory=1..}] run title @a[team=red] subtitle ["您的水晶正在遭受攻击!"]
execute as @e[tag=system_core_mark_red,scores={core_destory=1..}] run title @a[team=red] title [""]
scoreboard players set @e[tag=system_core_mark,scores={core_destory=1..}] core_destory 0
# display score
execute store result score 红队 sidebar_score run scoreboard players get system_red_score system
execute store result score 蓝队 sidebar_score run scoreboard players get system_blue_score system




