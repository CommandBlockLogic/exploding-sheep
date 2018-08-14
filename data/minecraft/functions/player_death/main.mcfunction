# player_death/main

# set death time
execute store result score @s death_time run scoreboard players get @s death_time_max
# reduce death count
execute if entity @s[team=red] run scoreboard players remove system_red_death_count system 1
execute if entity @s[team=blue] run scoreboard players remove system_blue_death_count system 1

# death message
tag @s add player_self
execute as @a if score @s s_id = @a[tag=player_self,limit=1] s_thrower_id run tag @s add player_killer

# message
# init
scoreboard players add @s killed_by_f 0
scoreboard players add @s killed_by_z 0
scoreboard players add @s killed_by_c 0
scoreboard players add @s killed_by_s 0
scoreboard players add @s fall_dis 0
# normal
# killed_by_c(z/s/f)=1被creeper(僵尸/小白/牙)杀死 s_kill_time=..2被特定羊炸死 fall_dis=300..摔死 
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,s_kill_time=..2}] if entity @a[tag=player_killer] if entity @s[tag=!player_killer] run function player_death/message/kill_by_player
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,s_kill_time=..2}] if entity @s[tag=player_killer] run function player_death/message/kill_by_himself
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,s_kill_time=..2}] unless entity @a[tag=player_killer] run function player_death/message/kill_by_sheep
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=300..,s_kill_time=3..233}] if entity @a[tag=player_killer] if entity @s[tag=!player_killer] run function player_death/message/push_by_player
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=300..,s_kill_time=3..233}] if entity @s[tag=player_killer] run function player_death/message/push_by_himself
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=300..,s_kill_time=3..233}] unless entity @a[tag=player_killer] run function player_death/message/push_by_sheep
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=300..,s_kill_time=999..}] run function player_death/message/fall_to_death
execute at @s if block ~ ~ ~ minecraft:lava if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=..300,s_kill_time=3..}] run function player_death/message/lava
execute at @s if block ~ ~1 ~ minecraft:water if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=..300,s_kill_time=3..}] run function player_death/message/water
execute at @s unless block ~ ~ ~ minecraft:lava unless block ~ ~1 ~ minecraft:water if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,fall_dis=..300,s_kill_time=3..}] run function player_death/message/stupid

# monster
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=1..,s_kill_time=3..}] run say 我被爆炸法术炸死了
execute if entity @s[scores={killed_by_f=0,killed_by_s=0,killed_by_z=0,killed_by_c=0,s_kill_time=3..},nbt={ActiveEffects:[{Id:20b}]}] run say 我被法师诅咒死了
execute if entity @s[scores={killed_by_f=1..}] run say 我被咬了
execute if entity @s[scores={killed_by_s=1..}] run say 我被怪物锤了
execute if entity @s[scores={killed_by_z=1..}] run say 我被怪物锤了

# clear
scoreboard players set @s death 0
scoreboard players set @s killed_by_c 0
scoreboard players set @s killed_by_z 0
scoreboard players set @s killed_by_s 0
scoreboard players set @s killed_by_f 0
tag @s remove player_self
tag @a[tag=player_killer] remove player_killer