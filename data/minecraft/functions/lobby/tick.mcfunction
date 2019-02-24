# lobby/tick

# fan
function lobby/launch_sheep/tick

# effect
function lobby/effect

# pve
function lobby/pve/tick

# easter
function lobby/easter

# 进入大厅玩家判断
execute positioned -230 1 -230 as @a[dx=147,dy=20,dz=214,tag=!in_lobby] run tag @s add in_lobby
execute as @a[tag=in_lobby] positioned -230 1 -230 unless entity @s[dx=147,dy=20,dz=214] run tag @s remove in_lobby

# 游戏过程中大厅无法使用炮和扇子
execute unless score game_status system matches 0 unless score game_status system matches 105 run scoreboard players set @a[tag=in_lobby] s_energy 0
execute unless score game_status system matches 0 unless score game_status system matches 105 run scoreboard players set @a[tag=in_lobby] s_fan_num 0
