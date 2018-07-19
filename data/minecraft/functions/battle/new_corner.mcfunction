# battle/new_corner

# tag itself
tag @s add tower
# find destroyer
execute as @a if score @s s_id = @e[tag=tower,limit=1] destory_id run tag @s add destroyer

# generate tower
execute if entity @a[tag=destroyer,limit=1,team=blue] at @s run function core/generate/blue_small
execute if entity @a[tag=destroyer,limit=1,team=blue] run scoreboard players set @s tower_status 2
execute if entity @a[tag=destroyer,limit=1,team=red] at @s run function core/generate/red_small
execute if entity @a[tag=destroyer,limit=1,team=red] run scoreboard players set @s tower_status 3
# add time
scoreboard players set system_corner_time system -30



# hint
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_ne] run tellraw @a[team=red] [">> 右侧小水晶已被",{"text":"我方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_sw] run tellraw @a[team=red] [">> 左侧小水晶已被",{"text":"我方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_ne] run tellraw @a[team=red] [">> 右侧小水晶已被",{"text":"敌方","color":"blue"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_sw] run tellraw @a[team=red] [">> 左侧小水晶已被",{"text":"敌方","color":"blue"},"攻占"]

execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_ne] run tellraw @a[team=blue] [">> 左侧小水晶已被",{"text":"敌方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=red] if entity @s[tag=system_core_mark_small_sw] run tellraw @a[team=blue] [">> 右侧小水晶已被",{"text":"敌方","color":"red"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_ne] run tellraw @a[team=blue] [">> 左侧小水晶已被",{"text":"我方","color":"blue"},"攻占"]
execute if entity @a[tag=destroyer,limit=1,team=blue] if entity @s[tag=system_core_mark_small_sw] run tellraw @a[team=blue] [">> 右侧小水晶已被",{"text":"我方","color":"blue"},"攻占"]



# harden and soften
# 软 有一个 ->硬
execute as @e[tag=system_core_mark_red,scores={tower_status=4}] if entity @e[tag=system_core_mark_small,scores={tower_status=3}] run tellraw @a [">> ",{"text":"红队","color":"red"},"的主水晶已硬化！攻占",{"text":"红色","color":"red"},"小水晶使其粉末化"]
execute as @e[tag=system_core_mark_red,scores={tower_status=4}] if entity @e[tag=system_core_mark_small,scores={tower_status=3}] run function core/harden/red
execute as @e[tag=system_core_mark_red,scores={tower_status=4}] if entity @e[tag=system_core_mark_small,scores={tower_status=3}] run scoreboard players set @s tower_status 5
execute as @e[tag=system_core_mark_blue,scores={tower_status=4}] if entity @e[tag=system_core_mark_small,scores={tower_status=2}] run tellraw @a [">> ",{"text":"蓝队","color":"blue"},"的主水晶已硬化！攻占",{"text":"蓝色","color":"blue"},"小水晶使其粉末化"]
execute as @e[tag=system_core_mark_blue,scores={tower_status=4}] if entity @e[tag=system_core_mark_small,scores={tower_status=2}] run function core/harden/blue
execute as @e[tag=system_core_mark_blue,scores={tower_status=4}] if entity @e[tag=system_core_mark_small,scores={tower_status=2}] run scoreboard players set @s tower_status 5
# 硬 没有一个 ->软
execute as @e[tag=system_core_mark_red,scores={tower_status=5}] unless entity @e[tag=system_core_mark_small,scores={tower_status=3}] run tellraw @a [">> ",{"text":"红队","color":"red"},"失去了所有小水晶！主水晶已粉末化"]
execute as @e[tag=system_core_mark_red,scores={tower_status=5}] unless entity @e[tag=system_core_mark_small,scores={tower_status=3}] run function core/soften/red
execute as @e[tag=system_core_mark_red,scores={tower_status=5}] unless entity @e[tag=system_core_mark_small,scores={tower_status=3}] run scoreboard players set @s tower_status 4
execute as @e[tag=system_core_mark_blue,scores={tower_status=5}] unless entity @e[tag=system_core_mark_small,scores={tower_status=2}] run tellraw @a [">> ",{"text":"蓝队","color":"blue"},"失去了所有小水晶！主水晶已粉末化"]
execute as @e[tag=system_core_mark_blue,scores={tower_status=5}] unless entity @e[tag=system_core_mark_small,scores={tower_status=2}] run function core/soften/blue
execute as @e[tag=system_core_mark_blue,scores={tower_status=5}] unless entity @e[tag=system_core_mark_small,scores={tower_status=2}] run scoreboard players set @s tower_status 4




# clear tag
tag @a[tag=destroyer] remove destroyer
tag @s remove tower
