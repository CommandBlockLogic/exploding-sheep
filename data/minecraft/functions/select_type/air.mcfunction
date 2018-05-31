# select_type/air

# add tag
tag @s[tag=sheep_own_air] add sheep_temp
tag @s[tag=!sheep_own_air] add sheep_own_air
tag @s[tag=sheep_temp] remove sheep_own_air
tag @s[tag=sheep_temp] remove sheep_temp
# cal max energy
function minecraft:select_type/cal_bullet
# display
function minecraft:select_type/display
# message
tellraw @s[tag=sheep_own_air] [{"text":">> ","color":"white"},"你选上了",{"text":"小红羊","color":"red"},", 弹药上限变小到了",{"score":{"name":"@s","objective":"s_max_bullet"}}]
tellraw @s[tag=!sheep_own_air] [{"text":">> ","color":"white"},"你丢掉了",{"text":"小红羊","color":"red"},", 弹药上限增加到了",{"score":{"name":"@s","objective":"s_max_bullet"}}]
