# sheep:ultimate/type/blue/find_place

# flag
scoreboard players set @s s_temp2 0

# too short
execute if score @s s_temp1 matches ..9 unless block ~ ~1 ~ #sheep:chuantou run scoreboard players set @s s_temp2 2

# stop
execute if score @s s_temp1 matches 10.. unless block ~ ~1 ~ #sheep:chuantou run scoreboard players set @s s_temp2 1

# too high
execute if score @s s_temp1 matches 30.. run scoreboard players set @s s_temp2 1

# end
execute if score @s s_temp2 matches 2 run kill @s
execute if score @s s_temp2 matches 0 run tp @s ~ ~1 ~
execute if score @s s_temp2 matches 0 run scoreboard players add @s s_temp1 1
execute at @s if score @s s_temp2 matches 0 run function sheep:ultimate/type/blue/find_place