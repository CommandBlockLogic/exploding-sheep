# select_type/heavy

# add tag
tag @s[tag=sheep_own_heavy] add sheep_temp
tag @s[tag=!sheep_own_heavy] add sheep_own_heavy
tag @s[tag=sheep_temp] remove sheep_own_heavy
tag @s[tag=sheep_temp] remove sheep_temp
# cal max_bullet
function minecraft:select_type/cal_bullet
# display
function minecraft:select_type/display
# message
tellraw @s[tag=sheep_own_heavy] [{"text":">> ","color":"white"},"你选上了",{"text":"小灰羊","color":"gray"},", 弹药上限变小到了",{"score":{"name":"@s","objective":"s_max_bullet"}}]
tellraw @s[tag=!sheep_own_heavy] [{"text":">> ","color":"white"},"你丢掉了",{"text":"小灰羊","color":"gray"},", 弹药上限增加到了",{"score":{"name":"@s","objective":"s_max_bullet"}}]
