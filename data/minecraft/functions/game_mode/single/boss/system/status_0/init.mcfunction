bossbar set minecraft:boss4 max 100
bossbar set minecraft:boss4 color purple
scoreboard players set 复活百分比 boss_4_system 100
scoreboard players set Boss复活时间 boss_4_system 500
summon minecraft:armor_stand 0 12 0 {Tags:["particle_marker"],Invisible:1b,NoGravity:1b,Marker:1b}
tellraw @a [{"text":"","color":"yellow"},{"translate":"multiplayer.player.joined","with":["羊羊之神"]}]
clear @a
