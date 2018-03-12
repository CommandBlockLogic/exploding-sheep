# ingame/tick

# gaming
function ingame/gaming
# summon cup
execute if score game_hp_red system <= game_hp_half_red system run function ingame_cup/main
execute if score game_hp_blue system <= game_hp_half_blue system run function ingame_cup/main
