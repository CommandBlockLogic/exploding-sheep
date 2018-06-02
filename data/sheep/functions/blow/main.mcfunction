# sheep:blow/main

# add thrower id and type to players
tag @s add sheep_temp
execute if entity @s[tag=!sheep_type_web,tag=!sheep_type_heal] as @a[distance=..3.5] store result score @s s_thrower_id run scoreboard players get @e[tag=sheep_temp,limit=1] s_thrower_id
execute if entity @s[tag=!sheep_type_web,tag=!sheep_type_heal] as @a[distance=..3.5] store result score @s s_sheep_type run scoreboard players get @e[tag=sheep_temp,limit=1] s_sheep_type
execute if entity @s[tag=!sheep_type_web,tag=!sheep_type_heal] run scoreboard players set @a[distance=..3.5] s_kill_time 0

# boom
execute if entity @s[tag=sheep_type_normal] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"可爱的\",\"color\":\"gray\"},{\"text\":\"小白羊\",\"color\":\"white\"}]"}
# [{"text":"可爱的","color":"gray"},{"text":"小白羊","color":"white"}]
execute if entity @s[tag=sheep_type_heavy] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"蠢蠢的\",\"color\":\"gray\"},{\"text\":\"小绿羊\",\"color\":\"green\"}]"}
# [{"text":"蠢蠢的","color":"gray"},{"text":"小灰羊","color":"dark_gray"}]
execute if entity @s[tag=sheep_type_fast] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"快快的\",\"color\":\"gray\"},{\"text\":\"小蓝羊\",\"color\":\"blue\"}]"}
# [{"text":"快快的","color":"gray"},{"text":"小蓝羊","color":"blue"}]
execute if entity @s[tag=sheep_type_air] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"匆忙的\",\"color\":\"gray\"},{\"text\":\"小红羊\",\"color\":\"red\"}]"}
# [{"text":"匆忙的","color":"gray"},{"text":"小红羊","color":"red"}]
execute if entity @s[tag=sheep_type_web] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_web_mark"]}
execute if entity @s[tag=sheep_type_heal] run effect give @a[distance=..2] minecraft:instant_health 1 0 false
execute if entity @s[tag=sheep_type_heal] run particle minecraft:heart ~ ~ ~ 1 1 1 0 20


# explode blocks
scoreboard players set @s s_temp1 0
scoreboard players set @s s_temp2 0
execute at @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_red] store result score @s s_temp1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:blue_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_red] store result score @s s_temp1 run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:blue_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_red] store result score @s s_temp1 run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:blue_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
scoreboard players set @s s_temp1 0

execute at @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_blue] store result score @s s_temp1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:red_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_blue] store result score @s s_temp1 run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:red_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_blue] store result score @s s_temp1 run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:red_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1

scoreboard players add 红队 system_info 0
scoreboard players add 蓝队 system_info 0
execute as @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_red] run scoreboard players operation 红队 system_info += @s s_temp2
execute as @s[tag=!sheep_type_web,tag=!sheep_type_heal,tag=sheep_team_blue] run scoreboard players operation 蓝队 system_info += @s s_temp2

# kill sheep
tag @s remove sheep_temp
tp @s 0 -100 0
kill @s