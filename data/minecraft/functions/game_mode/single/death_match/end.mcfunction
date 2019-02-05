# game_mode/single/death_match/end

scoreboard players set max_num system 0
execute as @a[team=yellow] run scoreboard players operation max_num system > @s sidebar_score
execute as @a[team=yellow] if score @s sidebar_score = max_num system run tag @s add niubi_temp

title @a times 10 200 10
execute if score max_num system matches 1.. run title @a title [{"selector":"@a[tag=niubi_temp]"},"胜利！"]
execute if score max_num system matches 0 run title @a title ["我知道你们故意的！"]
tag @a[tag=niubi_temp] remove niubi_temp

function game_mode/ending/main