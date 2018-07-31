# player_death/tick

# dead
execute as @a[scores={death=1..}] run function player_death/main
# respawn
execute positioned -176 8 -124 as @a[scores={death2=1..},dx=20,dy=10,dz=30] run function player_death/lobby
# decrease time
scoreboard players remove @a[scores={death_time=1..}] death_time 1

# tp time
scoreboard players add @a[scores={death_time_tp=1..}] death_time_tp 1
execute if score game_status system matches 0 run scoreboard players set @a[scores={death_time_tp=1..}] death_time_tp 0
tellraw @a[scores={death_time_tp=300..}] [">> 5秒后将自动传送至战场."]
execute as @a[scores={death_time_tp=400..}] run function public/tp_game_spawn
scoreboard players set @a[scores={death_time_tp=400..}] death_time_tp 0


# calculate fall distance
# 玩家被炸飞后 若掉落距离更新且没死 说明不是被炸飞死掉的 因此直接把死因监测时间计分板拖到不检测范围即大于10
scoreboard players set @a[scores={fall_dis=1..}] s_kill_time 999
scoreboard players set @a[scores={fall_dis=1..}] fall_dis 0
scoreboard players add @a s_kill_time 1




scoreboard players set @a[scores={s_kill_time=0}] fall_dis 0
scoreboard players set @a[scores={s_kill_time=40}] fall_dis 0
execute as @a[scores={s_kill_time=0..40}] store result score @s system_temp1 run data get entity @s FallDistance 10
execute as @a[scores={s_kill_time=0..40}] run scoreboard players operation @s fall_dis > @s system_temp1
# reset
scoreboard players set @a[scores={fall_dis2=1..}] fall_dis2 0