# reset/player

spawnpoint @s 50 24 43
tp @s 50 24 43

effect give @s minecraft:instant_health 1 10 true
function sheep:player_type/reset
gamemode adventure @s
xp set @s 0 levels
xp set @s 0 points
clear @s
scoreboard players reset @s