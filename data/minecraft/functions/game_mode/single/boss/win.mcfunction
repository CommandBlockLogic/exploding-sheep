# game_mode/single/boss/win

kill @e[type=!player]
title @a times 0 200 10
title @a title [{"text":"成功击杀羊羊之神！","color":"red"}]
tellraw @a {"translate":"chat.type.text","with":[{"text":"羊羊之神","color":"yellow"},[{"selector":"@a[team=red]"},{"text":", 你们给我等着!","color":"white"}]]}
tellraw @a {"translate":"multiplayer.player.left","with":[{"text":"羊羊之神","color":"yellow"}]}
advancement grant @a[team=red] only sheep:pve/4
bossbar set minecraft:boss4 visible false
function game_mode/ending/main
