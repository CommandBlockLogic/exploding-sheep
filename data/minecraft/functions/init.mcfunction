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
scoreboard objectives add system_temp1 dummy ["系统临时1"]
scoreboard objectives add system_temp2 dummy ["系统临时2"]
scoreboard objectives add system_temp3 dummy ["系统临时3"]
scoreboard objectives add system dummy ["系统状态"]

scoreboard objectives add sidebar_score dummy ["分数"]
scoreboard objectives add sidebar_red dummy ["小水晶状态"]
scoreboard objectives add sidebar_blue dummy ["小水晶状态"]

scoreboard objectives add core_destory dummy ["暂存被破坏方块数"]
scoreboard objectives add destory_id dummy ["破坏者id"]
scoreboard objectives add tower_status dummy ["水晶状态1紫2蓝3红10完好11破一点12破很多13完全破"]

scoreboard objectives add food food ["饱食度"]
scoreboard objectives add health health ["血量"]
scoreboard objectives add death deathCount ["玩家死亡次数"]
scoreboard objectives add death2 deathCount ["玩家死亡次数2"]
scoreboard objectives add death_time dummy ["玩家死亡复活时间"]
scoreboard objectives add death_time_max dummy ["玩家最大死亡复活时间"]

scoreboard objectives add drop_brick minecraft.dropped:minecraft.stone_bricks ["回城指示"]

team add red
team add blue

team modify red color red
team modify blue color blue
team modify red friendlyFire false
team modify blue friendlyFire false
scoreboard objectives setdisplay list health
