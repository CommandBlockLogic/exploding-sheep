# game_mode/single/boss/tick

# boss状态
function game_mode/single/boss/system/tick


# 死亡gm3
tp @a[scores={death_boss=1..},gamemode=!spectator] 0 20 0
gamemode spectator @a[scores={death_boss=1..},gamemode=!spectator]

# 玩家全死
execute unless entity @a[scores={death_boss=0}] run function game_mode/single/boss/fail
