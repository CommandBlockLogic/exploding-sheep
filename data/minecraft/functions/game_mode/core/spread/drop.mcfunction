# game_mode/core/spread/drop

summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["system_drop_mark"]}
execute as @e[tag=system_drop_mark] at @e[tag=system_core_mark_center,limit=1] run function game_mode/core/spread/find_pos
execute at @e[tag=system_drop_mark,limit=1] run setblock ~ 100 ~ minecraft:purple_concrete_powder
kill @e[tag=system_drop_mark]