# init

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule spawnRadius 1
time set 6000

function sheep:init

scoreboard objectives add system_time dummy 系统时间
scoreboard objectives add system_info dummy 系统信息

team add red
team add blue

team option red color red
team option blue color blue