# sheep:blow/main

# add thrower id and type to players
tag @s add sheep_temp
execute if entity @s[tag=!sheep_type_web,tag=!sheep_type_heal] as @a[distance=..4] store result score @s s_thrower_id run scoreboard players get @e[tag=sheep_temp,limit=1] s_thrower_id
execute if entity @s[tag=!sheep_type_web,tag=!sheep_type_heal] as @a[distance=..4] store result score @s s_sheep_type run scoreboard players get @e[tag=sheep_temp,limit=1] s_sheep_type
execute if entity @s[tag=!sheep_type_web,tag=!sheep_type_heal] run scoreboard players set @a[distance=..4] s_kill_time 0

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
execute if entity @s[tag=sheep_type_heal] run effect give @a[distance=..2.5] minecraft:regeneration 8 1 false
execute if entity @s[tag=sheep_type_heal] run particle minecraft:heart ~ ~ ~ 2 1 2 0 100

# boom leader
execute if entity @s[tag=sheep_type_normal] at @s if entity @e[distance=..5,tag=game_target_red] run scoreboard players remove game_hp_red system 4 
execute if entity @s[tag=sheep_type_normal] at @s if entity @e[distance=..5,tag=game_target_blue] run scoreboard players remove game_hp_blue system 4 
execute if entity @s[tag=sheep_type_normal] at @s if entity @e[distance=..5,tag=game_target_cup] run scoreboard players remove game_hp_cup system 4 

# add blow effect
execute if entity @s[tag=sheep_effect_big] at @s run data merge entity @e[distance=..1,limit=1,tag=sheep_blower] {ExplosionRadius:4}

# kill sheep
tag @s remove sheep_temp
tp @s 0 -100 0
kill @s