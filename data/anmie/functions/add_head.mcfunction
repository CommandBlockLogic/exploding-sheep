# self
tag @s add ani_as_temp
# add head
execute as @r run loot replace entity @e[tag=ani_as_temp,limit=1] armor.head loot anmie:player_head
# clear
tag @s remove ani_as_temp