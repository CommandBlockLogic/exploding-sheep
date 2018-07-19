# init

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule spawnRadius 1
time set 6000

function sheep:init

scoreboard objectives add system_time dummy ["系统时间"]
scoreboard objectives add system dummy ["系统状态"]
scoreboard objectives add sidebar_score dummy ["分数"]

scoreboard objectives add core_destory dummy ["暂存被破坏方块数"]

scoreboard objectives add food food ["饱食度"]
scoreboard objectives add health health ["血量"]
scoreboard objectives add death deathCount ["玩家死亡次数"]

team add red
team add blue

team modify red color red
team modify blue color blue
team modify red friendlyfire false
team modify blue friendlyfire false
scoreboard objectives setdisplay list health
