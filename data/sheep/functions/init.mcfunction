# sheep:init

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule spawnRadius 1
time set 6000

scoreboard objectives add s_launch minecraft.used:minecraft.carrot_on_a_stick 射击

scoreboard objectives add s_flying_time dummy 羊飞行时间
scoreboard objectives add s_blow_time dummy 羊落地后爆炸时间

scoreboard objectives add s_wind_time dummy 风飞行时间

scoreboard objectives add s_bullet dummy 剩余发射次数
scoreboard objectives add s_cd dummy 装弹时间
scoreboard objectives add s_energy dummy 挥扇子体力
scoreboard objectives add s_max_bullet dummy 最大子弹

scoreboard objectives add s_push_time dummy 失重时间

scoreboard objectives add s_thrower_id dummy 投掷玩家id
scoreboard objectives add s_sheep_type dummy 羊类型
scoreboard objectives add s_kill_time dummy 死亡信息时间

scoreboard objectives add s_launch_type dummy 手中羊类型

scoreboard objectives add s_vx dummy 羊vx
scoreboard objectives add s_vy dummy 羊vy
scoreboard objectives add s_vz dummy 羊vz

scoreboard objectives add s_ax dummy 羊ax
scoreboard objectives add s_ay dummy 羊ay
scoreboard objectives add s_az dummy 羊az

scoreboard objectives add s_web_time dummy 网存在时间

scoreboard objectives add s_temp1 dummy 临时1
scoreboard objectives add s_temp2 dummy 临时2
scoreboard objectives add s_temp3 dummy 临时3
scoreboard objectives add s_temp4 dummy 临时4
scoreboard objectives add s_temp5 dummy 临时5
scoreboard objectives add s_temp6 dummy 临时6
scoreboard objectives add s_temp7 dummy 临时7