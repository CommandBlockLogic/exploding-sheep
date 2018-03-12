# end/blue_win

title @a times 10 200 10
title @a title ["游戏结束！"]
title @a subtitle ["蓝队胜利！"]
tellraw @a [">> 10秒后回到大厅"]

clear @a
scoreboard players set game_phase system 5