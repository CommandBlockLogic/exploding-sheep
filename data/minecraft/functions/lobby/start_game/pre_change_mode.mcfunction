# lobby/start_game/pre_change_mode

execute if score game_status system matches 0 run function lobby/start_game/change_mode
