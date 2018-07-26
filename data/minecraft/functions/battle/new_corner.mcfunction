# battle/new_corner

# tag itself
tag @s add tower
# find destroyer
execute as @a if score @s s_id = @e[tag=tower,limit=1] destory_id run tag @s add destroyer

# cal purple tower
scoreboard players set purple_tower_num system 0
execute as @e[tag=system_core_mark_small,scores={tower_status=1}] run scoreboard players add purple_tower_num system 1

# generate tower
execute if entity @a[tag=destroyer,limit=1,team=blue] at @s run function core/generate/blue_small
execute if entity @a[tag=destroyer,limit=1,team=blue] run scoreboard players set @s tower_status 2
execute if entity @a[tag=destroyer,limit=1,team=red] at @s run function core/generate/red_small
execute if entity @a[tag=destroyer,limit=1,team=red] run scoreboard players set @s tower_status 3
# add time
scoreboard players set system_corner_time system -50



# hint
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_ne] run title @a[team=red] subtitle ["右侧小水晶已被",{"text":"我方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_ne] run title @a[team=red] title [""]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_sw] run title @a[team=red] subtitle ["左侧小水晶已被",{"text":"我方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_sw] run title @a[team=red] title [""]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_ne] run title @a[team=red] subtitle ["右侧小水晶已被",{"text":"敌方","color":"blue"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_ne] run title @a[team=red] title [""]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_sw] run title @a[team=red] subtitle ["左侧小水晶已被",{"text":"敌方","color":"blue"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_sw] run title @a[team=red] title [""]

execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_ne] run title @a[team=blue] subtitle ["左侧小水晶已被",{"text":"敌方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_ne] run title @a[team=blue] title [""]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_sw] run title @a[team=blue] subtitle ["右侧小水晶已被",{"text":"敌方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_sw] run title @a[team=blue] title [""]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_ne] run title @a[team=blue] subtitle ["左侧小水晶已被",{"text":"我方","color":"blue"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_ne] run title @a[team=blue] title [""]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_sw] run title @a[team=blue] subtitle ["右侧小水晶已被",{"text":"我方","color":"blue"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_sw] run title @a[team=blue] title [""]



# cal tower num
scoreboard players set red_tower_num system 0
scoreboard players set blue_tower_num system 0
execute as @e[tag=system_core_mark_small,scores={tower_status=2}] run scoreboard players add blue_tower_num system 1
execute as @e[tag=system_core_mark_small,scores={tower_status=3}] run scoreboard players add red_tower_num system 1
# 1 重开恢复 2 加速恢复
# 1 加速恢复失效 2 无法恢复
execute if entity @a[tag=destroyer,limit=1,team=red] if score red_tower_num system matches 1 run tellraw @a [">> ",{"text":"红队","color":"red"},"主水晶正在缓慢恢复."]
execute if entity @a[tag=destroyer,limit=1,team=red] if score red_tower_num system matches 2 run tellraw @a [">> ",{"text":"红队","color":"red"},"主水晶正在加速恢复."]
execute if entity @a[tag=destroyer,limit=1,team=red] if score blue_tower_num system matches 1 run tellraw @a [">> ",{"text":"蓝队","color":"blue"},"主水晶正在缓慢恢复."]
execute if entity @a[tag=destroyer,limit=1,team=red] if score blue_tower_num system matches 0 if score purple_tower_num system matches 0 run tellraw @a [">> ",{"text":"蓝队","color":"blue"},"主水晶停止恢复了. 快进攻!"]

execute if entity @a[tag=destroyer,limit=1,team=blue] if score blue_tower_num system matches 1 run tellraw @a [">> ",{"text":"蓝队","color":"blue"},"主水晶正在缓慢恢复."]
execute if entity @a[tag=destroyer,limit=1,team=blue] if score blue_tower_num system matches 2 run tellraw @a [">> ",{"text":"蓝队","color":"blue"},"主水晶正在加速恢复."]
execute if entity @a[tag=destroyer,limit=1,team=blue] if score red_tower_num system matches 1 run tellraw @a [">> ",{"text":"红队","color":"red"},"主水晶正在缓慢恢复."]
execute if entity @a[tag=destroyer,limit=1,team=blue] if score red_tower_num system matches 0 if score purple_tower_num system matches 0 run tellraw @a [">> ",{"text":"红队","color":"red"},"主水晶停止恢复了. 快进攻!"]





# clear tag
tag @a[tag=destroyer] remove destroyer
tag @s remove tower
