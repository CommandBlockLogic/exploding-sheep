# reset/without_team

scoreboard players reset *
execute as @a run function reset/player
kill @e[type=!player]
bossbar remove game:red
bossbar remove game:blue
function ingame_cup/cup/del