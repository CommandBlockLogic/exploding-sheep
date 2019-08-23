# init

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule mobGriefing false
gamerule logAdminCommands false
gamerule spawnRadius 1
time set 6000

function sheep:init
function lobby/pve/init

scoreboard objectives add system_time dummy ["系统时间"]
scoreboard objectives add system_temp1 dummy ["系统临时1"]
scoreboard objectives add system_temp2 dummy ["系统临时2"]
scoreboard objectives add system_temp3 dummy ["系统临时3"]
scoreboard objectives add system dummy ["系统状态"]
scoreboard objectives add system_cal dummy ["系统计算"]

scoreboard objectives add sidebar_score dummy ["分数"]
scoreboard objectives add sidebar_red dummy ["小水晶状态"]
scoreboard objectives add sidebar_blue dummy ["小水晶状态"]

scoreboard objectives add core_destory dummy ["暂存被破坏方块数"]
scoreboard objectives add destory_id dummy ["破坏者id"]
scoreboard objectives add tower_status dummy ["水晶状态1紫2蓝3红10完好11破一点12破很多13完全破"]

scoreboard objectives add food food ["饱食度"]
scoreboard objectives add health health {"text":"\u2764","color":"red"}
scoreboard objectives add death deathCount ["玩家死亡次数"]
scoreboard objectives add death2 deathCount ["玩家死亡次数2"]
scoreboard objectives add death_boss deathCount ["玩家死亡次数boss战用"]
scoreboard objectives add death_time dummy ["玩家死亡复活时间"]
scoreboard objectives add death_time_max dummy ["玩家最大死亡复活时间"]
scoreboard objectives add death_time_tp dummy ["玩家死亡复活传送时间"]
scoreboard objectives add quick_back dummy ["快速传送"]
scoreboard objectives add killed_by_c minecraft.killed_by:minecraft.creeper ["玩家被炸死"]
scoreboard objectives add killed_by_z minecraft.killed_by:minecraft.zombie ["被僵尸杀死"]
scoreboard objectives add killed_by_s minecraft.killed_by:minecraft.skeleton ["被小白杀死"]
scoreboard objectives add killed_by_f minecraft.killed_by:minecraft.evoker_fangs ["被唤魔者杀死"]
scoreboard objectives add fall_dis minecraft.custom:minecraft.fall_one_cm ["玩家掉落距离默认"]

scoreboard objectives add drop_brick minecraft.dropped:minecraft.stone_bricks ["回城指示"]
scoreboard objectives add drop_coal minecraft.dropped:minecraft.coal_block ["开启快速传送"]
scoreboard objectives add drop_gold minecraft.dropped:minecraft.gold_block ["关闭快速传送"]

scoreboard objectives add kill_player dummy ["杀人数量"]
scoreboard objectives add core_number dummy ["水晶砂数量"]

scoreboard objectives add tellraw_anime trigger ["开始动画trigger"]


team add red
team add blue
team add yellow

team modify red color red
team modify blue color blue
team modify yellow color yellow
team modify red friendlyFire false
team modify blue friendlyFire false
team modify yellow friendlyFire true
scoreboard objectives setdisplay list health
scoreboard objectives setdisplay belowName health