# get_score/tick

# class
function lobby/change_class
# enter game
function lobby/enter_game
# effect
function lobby/effect



# summon blocks
function core/recover/red
function core/recover/blue



# check end
execute if score system_red_score system matches 500.. run function get_score/red_win
execute if score system_blue_score system matches 500.. run function get_score/blue_win

# cal score
scoreboard players add system_red_score system 0
scoreboard players add system_blue_score system 0
execute as @e[tag=system_core_mark_blue,scores={core_destory=1..}] run scoreboard players operation system_red_score system += @s core_destory
execute as @e[tag=system_core_mark_red,scores={core_destory=1..}] run scoreboard players operation system_blue_score system += @s core_destory
execute as @e[tag=system_core_mark_blue,scores={core_destory=1..}] run title @a[team=blue] actionbar ["您的水晶正在遭受攻击!"]
execute as @e[tag=system_core_mark_red,scores={core_destory=1..}] run title @a[team=red] actionbar ["您的水晶正在遭受攻击!"]
scoreboard players set @e[tag=system_core_mark,scores={core_destory=1..}] core_destory 0
# display score
execute store result score 红队 sidebar_score run scoreboard players get system_red_score system
execute store result score 蓝队 sidebar_score run scoreboard players get system_blue_score system




