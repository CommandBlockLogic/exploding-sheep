# init

function sheep:init

scoreboard objectives add death deathCount 死亡
scoreboard objectives add death_message deathCount 死亡消息用
scoreboard objectives add respawn_time dummy 重生时间
scoreboard objectives add keep_item dummy 保持玩家物品

scoreboard objectives add system dummy 系统用

scoreboard objectives add display dummy §8>> §f系统信息 §8<<

# team
team add red
team add blue
team add spec

team option red color red
team option blue color blue
team option spec color gray