# lobby/start_game/get_score

scoreboard players add game_mode_status system 0
execute unless score game_status system matches 0 if score game_mode_status system matches 0 run function game_mode/group/death_match/main
execute unless score game_status system matches 0 if score game_mode_status system matches 1 run function game_mode/single/death_match/main