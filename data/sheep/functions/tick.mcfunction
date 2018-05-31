# sheep:tick

function sheep:blow/tick
function sheep:fan/tick
execute as @e[tag=sheep_sheep] run function sheep:fly/tick

# web
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
execute as @e[scores={s_web_time=1}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:cobweb keep
execute as @e[scores={s_web_time=1}] at @s run particle block cobweb ~ ~0.5 ~ 2 0 2 0 20
execute as @e[scores={s_web_time=101..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:cobweb
kill @e[scores={s_web_time=101..}]