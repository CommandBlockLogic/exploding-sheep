# select_type/web

# add tag
tag @s[tag=sheep_own_web] add sheep_temp
tag @s[tag=!sheep_own_web] add sheep_own_web
tag @s[tag=sheep_temp] remove sheep_own_web
tag @s[tag=sheep_temp] remove sheep_temp
# cal max_bullet
function minecraft:select_type/cal_bullet
# display
function minecraft:select_type/display
# message
tellraw @s[tag=sheep_own_web] [{"text":">> ","color":"white"},"你选上了",{"text":"小冰羊","color":"aqua"},", 弹药上限变小到了",{"score":{"name":"@s","objective":"s_max_bullet"}}]
tellraw @s[tag=!sheep_own_web] [{"text":">> ","color":"white"},"你丢掉了",{"text":"小冰羊","color":"aqua"},", 弹药上限增加到了",{"score":{"name":"@s","objective":"s_max_bullet"}}]
