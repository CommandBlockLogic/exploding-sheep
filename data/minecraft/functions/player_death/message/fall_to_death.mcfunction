# player_death/message/fall_to_death

tellraw @a ["-- ",{"selector":"@s"}," 脚滑了."," --"]

scoreboard players remove @s kill_player 1