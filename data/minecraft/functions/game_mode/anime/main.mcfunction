# init flag
function game_mode/select_mode/init_confirm_timer


# check confirm
execute if score game_status system matches 0 if score system_ani_confirm system matches 0 run tellraw @a [">> 即将播放游戏背景动画, 15秒内再次按下",{"text":"按钮","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tellraw_anime set 1"}},"开始播放！所有玩家需同时观看."]
# start game
execute if score game_status system matches 0 if score system_ani_confirm system matches 1.. run function game_mode/anime/start

# set score
execute if score game_status system matches 0 if score system_ani_confirm system matches 0 run function game_mode/select_mode/reset_confirm_timer
execute if score game_status system matches 0 if score system_ani_confirm system matches 0 run scoreboard players set system_ani_confirm system 300

scoreboard players enable @a tellraw_anime
