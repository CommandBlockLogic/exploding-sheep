# keep_mark/fan

kill @e[tag=system_fan_mark]

#summon minecraft:area_effect_cloud -193 16 -175 {Duration:9999999,Tags:["system_fan_mark"]}
#summon minecraft:area_effect_cloud -201 16 -166 {Duration:9999999,Tags:["system_fan_mark"]}
#summon minecraft:area_effect_cloud -172 14 -175 {Duration:9999999,Tags:["system_fan_mark"]}

#scoreboard players add @e[tag=system_fan_mark,limit=1] system_time 7
#scoreboard players add @e[tag=system_fan_mark,limit=2] system_time 7
#scoreboard players add @e[tag=system_fan_mark,limit=3] system_time 7

summon minecraft:area_effect_cloud -180 19 -166 {Duration:9999999,Tags:["system_fan_mark"]}