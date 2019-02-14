# game_mode/single/boss/tick

# boss状态
function game_mode/single/boss/system/tick


# 死亡gm3
gamemode spectator @a[scores={death_boss=1..},gamemode=!spectator]

# 玩家全死
execute unless entity @a[scores={death_boss=0}] run function game_mode/single/boss/fail

# boss死了
# 调用 function game_mode/single/boss/win