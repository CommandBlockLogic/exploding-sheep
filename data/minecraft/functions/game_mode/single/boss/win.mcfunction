# game_mode/single/boss/win

kill @e[tag=boss_fight]
title @a times 0 200 10
title @a title [{"text":"成功击杀羊羊之神！","color":"red"}]
tellraw @a [{"text":"<","color":"white"},{"text":"羊羊之神","color":"yellow","bold":"false"},{"text":"> ","color":"white","bold":"false"},{"selector":"@a[team=red]"},{"text":", 你们给我等着！","color":"white"}]
tellraw @a [{"text":"羊羊之神","color":"yellow","bold":"false"},{"text":"退出了游戏","color":"yellow","bold":"false"}]
advancement grant @a[team=red] only sheep:pve/4
bossbar set minecraft:boss4 visible false
function game_mode/ending/main