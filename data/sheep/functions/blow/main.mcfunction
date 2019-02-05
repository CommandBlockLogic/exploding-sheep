# sheep:blow/main

# add thrower id and type to players
tag @s add sheep_temp
execute as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run tag @s add player_temp
scoreboard players set @s s_blow_power 0
scoreboard players set @s[tag=!sheep_attr_no_damage] s_blow_power 2
scoreboard players set @s[tag=sheep_type_blue_small] s_blow_power 3
scoreboard players set @s[tag=sheep_type_fast,scores={s_flying_time=22..40}] s_blow_power 3
scoreboard players set @s[tag=sheep_type_fast,scores={s_flying_time=41..}] s_blow_power 4
# power
execute if score @s s_blow_power matches 2 at @s as @a[distance=..4] run function sheep:blow/add_hit_mark
execute if score @s s_blow_power matches 3 at @s as @a[distance=..6] run function sheep:blow/add_hit_mark
execute if score @s s_blow_power matches 4 at @s as @a[distance=..8] run function sheep:blow/add_hit_mark


# boom
execute if entity @s[tag=sheep_type_normal] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"可爱的\",\"color\":\"gray\"},{\"text\":\"小白羊\",\"color\":\"white\"}]"}
# [{"text":"可爱的","color":"gray"},{"text":"小白羊","color":"white"}]
execute if entity @s[tag=sheep_type_fast,scores={s_flying_time=..21}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"快快的\",\"color\":\"gray\"},{\"text\":\"小黄羊\",\"color\":\"yellow\"}]"}
execute if entity @s[tag=sheep_type_fast,scores={s_flying_time=22..40}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:3,CustomName:"[{\"text\":\"快快的\",\"color\":\"gray\"},{\"text\":\"小黄羊\",\"color\":\"yellow\"}]"}
execute if entity @s[tag=sheep_type_fast,scores={s_flying_time=41..}] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:4,CustomName:"[{\"text\":\"快快的\",\"color\":\"gray\"},{\"text\":\"小黄羊\",\"color\":\"yellow\"}]"}
# [{"text":"快快的","color":"gray"},{"text":"小黄羊","color":"yellow"}]
execute if entity @s[tag=sheep_type_air] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"匆忙的\",\"color\":\"gray\"},{\"text\":\"小红羊\",\"color\":\"red\"}]"}
# [{"text":"匆忙的","color":"gray"},{"text":"小红羊","color":"red"}]
execute if entity @s[tag=sheep_type_gray] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"可爱的\",\"color\":\"gray\"},{\"text\":\"超灰羊\",\"color\":\"gray\"}]"}
# [{"text":"可爱的","color":"gray"},{"text":"超灰羊","color":"gray"}]
execute if entity @s[tag=sheep_type_lime] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:2,CustomName:"[{\"text\":\"智慧的\",\"color\":\"gray\"},{\"text\":\"超柠羊\",\"color\":\"green\"}]"}
# [{"text":"智慧的","color":"gray"},{"text":"超柠羊","color":"green"}]
execute if entity @s[tag=sheep_type_blue_small] run summon minecraft:creeper ~ ~ ~ {Fuse:0,Tags:["sheep_blower"],ExplosionRadius:3,CustomName:"[{\"text\":\"正义的\",\"color\":\"gray\"},{\"text\":\"超蓝羊\",\"color\":\"blue\"}]"}
# [{"text":"正义的","color":"gray"},{"text":"超蓝羊","color":"blue"}]

execute if entity @s[tag=sheep_type_volleyball] run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:0,Explosions:[{Type:0,Colors:[I;5636095]}]}}},Life:1}



# ice
execute if entity @s[tag=sheep_type_web,tag=sheep_team_red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_web_mark","sheep_web_mark_red"]}
execute if entity @s[tag=sheep_type_web,tag=sheep_team_blue] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_web_mark","sheep_web_mark_blue"]}
execute if entity @s[tag=sheep_type_web,tag=!sheep_team_blue,tag=!sheep_team_red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_web_mark"]}
# heal
execute if entity @s[tag=sheep_type_heal] run playsound minecraft:item.bottle.fill ambient @a ~ ~ ~ 1 0.5
execute if entity @s[tag=sheep_type_heal] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:9999999,Tags:["sheep_heal_mark"]}
execute if entity @s[tag=sheep_type_heal,tag=sheep_team_red] run effect give @a[distance=..3,team=red] minecraft:absorption 30 0 true
execute if entity @s[tag=sheep_type_heal,tag=sheep_team_blue] run effect give @a[distance=..3,team=blue] minecraft:absorption 30 0 true
execute if entity @s[tag=sheep_type_heal,tag=!sheep_team_blue,tag=!sheep_team_red] run effect give @a[distance=..3] minecraft:absorption 30 0 true
# teleport
execute if entity @s[tag=sheep_type_teleport] at @s as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run tp @s ~ ~ ~ ~ ~
execute if entity @s[tag=sheep_type_teleport] run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 1 0.5
execute if entity @s[tag=sheep_type_teleport] run particle minecraft:portal ~ ~ ~ 0 0 0 0.8 100
execute if entity @s[tag=sheep_type_teleport] run particle minecraft:dust 0 0 0 2 ~ ~ ~ 0.5 1 0.5 0 100





# explode blocks
scoreboard players set @s s_temp1 0
scoreboard players set @s s_temp2 0
execute at @s[tag=!sheep_attr_no_damage,tag=sheep_team_red] store result score @s s_temp1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:blue_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_attr_no_damage,tag=sheep_team_red] store result score @s s_temp1 run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:blue_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_attr_no_damage,tag=sheep_team_red] store result score @s s_temp1 run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:blue_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1

scoreboard players set @s s_temp1 0
execute at @s[tag=!sheep_attr_no_damage,tag=sheep_team_blue] store result score @s s_temp1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:red_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_attr_no_damage,tag=sheep_team_blue] store result score @s s_temp1 run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:red_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_attr_no_damage,tag=sheep_team_blue] store result score @s s_temp1 run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:red_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1

scoreboard players set @s s_temp1 0
execute at @s[tag=!sheep_attr_no_damage] store result score @s s_temp1 run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:purple_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_attr_no_damage] store result score @s s_temp1 run fill ~ ~-1 ~-1 ~ ~1 ~1 minecraft:air replace minecraft:purple_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1
execute at @s[tag=!sheep_attr_no_damage] store result score @s s_temp1 run fill ~-1 ~-1 ~ ~1 ~1 ~ minecraft:air replace minecraft:purple_concrete_powder
scoreboard players operation @s s_temp2 += @s s_temp1

scoreboard players add @e[tag=system_core_mark,sort=nearest,limit=1] core_destory 0
scoreboard players add @e[tag=system_core_mark,sort=nearest,limit=1] destory_id 0
execute as @s[tag=!sheep_attr_no_damage,scores={s_temp2=1..}] store success score @a[tag=player_temp,limit=1] core_destory run scoreboard players get @s s_temp2
execute as @s[tag=!sheep_attr_no_damage,scores={s_temp2=1..}] run scoreboard players operation @e[tag=system_core_mark,sort=nearest,limit=1] core_destory += @s s_temp2
execute as @s[tag=!sheep_attr_no_damage,scores={s_temp2=1..}] run scoreboard players operation @e[tag=system_core_mark,sort=nearest,limit=1] destory_id = @s s_thrower_id






# add ultimate energy
# blocks
scoreboard players set @s s_temp1 60
scoreboard players operation @s s_temp2 *= @s s_temp1
execute if entity @s[tag=!sheep_attr_no_damage,scores={s_temp2=1..}] as @a if score @s s_id = @e[tag=sheep_temp,limit=1] s_thrower_id run scoreboard players operation @s s_ulti_energy += @e[tag=sheep_temp,limit=1] s_temp2
# damage
execute if entity @s[tag=!sheep_attr_no_damage,tag=!sheep_team_red,tag=!sheep_team_blue] at @s as @a[distance=..1] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 200
execute if entity @s[tag=!sheep_attr_no_damage,tag=!sheep_team_red,tag=!sheep_team_blue] at @s as @a[distance=..2] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100
execute if entity @s[tag=!sheep_attr_no_damage,tag=!sheep_team_red,tag=!sheep_team_blue] at @s as @a[distance=..4] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100

execute if entity @s[tag=!sheep_attr_no_damage,tag=sheep_team_red] at @s as @a[distance=..1,team=!red,gamemode=!spectator] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 200
execute if entity @s[tag=!sheep_attr_no_damage,tag=sheep_team_red] at @s as @a[distance=..2,team=!red,gamemode=!spectator] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100
execute if entity @s[tag=!sheep_attr_no_damage,tag=sheep_team_red] at @s as @a[distance=..4,team=!red,gamemode=!spectator] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100

execute if entity @s[tag=!sheep_attr_no_damage,tag=sheep_team_blue] at @s as @a[distance=..1,team=!blue,gamemode=!spectator] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 200
execute if entity @s[tag=!sheep_attr_no_damage,tag=sheep_team_blue] at @s as @a[distance=..2,team=!blue,gamemode=!spectator] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100
execute if entity @s[tag=!sheep_attr_no_damage,tag=sheep_team_blue] at @s as @a[distance=..4,team=!blue,gamemode=!spectator] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100

execute if entity @s[tag=!sheep_attr_no_damage] at @s as @e[tag=monster,distance=..1] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 200
execute if entity @s[tag=!sheep_attr_no_damage] at @s as @e[tag=monster,distance=..2] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100
execute if entity @s[tag=!sheep_attr_no_damage] at @s as @e[tag=monster,distance=..4] run scoreboard players add @a[tag=player_temp,limit=1] s_ulti_energy 100





# clear player
tag @a[tag=player_temp] remove player_temp
# kill sheep
tag @s remove sheep_temp
tp @s 0 -100 0
kill @s