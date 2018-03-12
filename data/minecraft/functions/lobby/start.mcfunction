# lobby/start

# save players count
scoreboard players set game_player_count_red system 0
scoreboard players set game_player_count_blue system 0
execute as @a[team=red] run scoreboard players add game_player_count_red system 1
execute as @a[team=blue] run scoreboard players add game_player_count_blue system 1

# test players
execute if score game_player_count_red system matches 1..999 if score game_player_count_blue system matches 1..999 if score game_player_count_red system = game_player_count_blue system run function minecraft:ready/main
execute unless score game_player_count_red system = game_player_count_blue system run tellraw @a [">> 双方人数不等 无法开始"]
execute if score game_player_count_red system matches 0..0 run tellraw @a [">> 人都没有 你让红石部落怎么办？？？"]
execute if score game_player_count_blue system matches 0..0 run tellraw @a [">> 人都没有 你让青金石部落怎么办？？？"]
#function minecraft:ready/main