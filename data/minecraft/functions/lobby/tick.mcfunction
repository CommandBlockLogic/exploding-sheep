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
execute positioned -181 1 -131 as @a[dx=25,dy=20,dz=23,tag=!in_lobby] run tag @s add in_lobby
execute as @a[tag=in_lobby] positioned -181 1 -131 unless entity @s[dx=25,dy=20,dz=23] run tag @s remove in_lobby