# player_death/tick

# dead
execute as @a[scores={death=1..}] run function player_death/main
# respawn
execute as @a[scores={death2=1..},tag=in_lobby,nbt=!{Health:0.0f}] run function player_death/lobby
# decrease time
scoreboard players remove @a[scores={death_time=1..}] death_time 1

# lobby time up hint
execute if score game_status system matches 1.. unless score game_status system matches 8964 unless score game_status system matches 5 as @a[scores={death_time=1..},tag=in_lobby] run function player_death/lobby_display

# quick tp switch
scoreboard players add @a quick_back 0
scoreboard players set @a[scores={drop_coal=1..}] quick_back 1
scoreboard players set @a[scores={drop_gold=1..}] quick_back 0
tellraw @a[scores={drop_coal=1..}] [{"text":"## ","color":"gray","italic":true},"快速传送已切换至开启. 死亡充满羊羊能量后可立即传送."]
tellraw @a[scores={drop_gold=1..}] [{"text":"## ","color":"gray","italic":true},"快速传送已切换至关闭. 死亡后需踩上传送石才可传送."]
scoreboard players set @a[scores={drop_coal=1..}] drop_coal 0
scoreboard players set @a[scores={drop_gold=1..}] drop_gold 0

# quick tp
scoreboard players set @a[scores={death_time=0,quick_back=1}] death_time_tp 0
execute as @a[scores={death_time=0,quick_back=1}] run function game_mode/public/tp_game_spawn

# tp time
scoreboard players add @a[scores={death_time_tp=1..}] death_time_tp 1
execute if score game_status system matches 0 run scoreboard players set @a[scores={death_time_tp=1..}] death_time_tp 0
execute if score game_status system matches 5 run scoreboard players set @a[scores={death_time_tp=1..}] death_time_tp 0
tellraw @a[scores={death_time_tp=300}] [{"text":"## ","color":"gray","italic":true},"5秒后将自动传送至战场."]
execute as @a[scores={death_time_tp=400..}] run function game_mode/public/tp_game_spawn
scoreboard players set @a[scores={death_time_tp=400..}] death_time_tp 0


# calculate fall distance
# 玩家被炸飞后 若掉落距离更新且没死 说明不是被炸飞死掉的 因此直接把死因监测时间计分板拖到不检测范围即大于999
# 玩家落地后 若玩家仍在被炸飞摔死的判定期内 直接把死因监测拖到不检测范围
# s_kill_time分段 1-2之间被炸死判定 3-233之间被炸起来摔死判定 999-纯摔死判定
scoreboard players add @a death 0
scoreboard players set @a[scores={s_kill_time=3..233,death=0},nbt={OnGround:1b}] s_kill_time 999
scoreboard players set @a[scores={fall_dis=1..,death=0}] s_kill_time 999
scoreboard players set @a[scores={fall_dis=1..,death=0}] fall_dis 0
scoreboard players add @a s_kill_time 1

