# game_mode/single/boss/fail

kill @e[type=!player]
bossbar set minecraft:boss4 visible false
title @a times 0 200 10
title @a title [{"text":"所有挑战者死亡","color":"red"}]
function game_mode/ending/main