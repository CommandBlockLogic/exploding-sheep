# sheep:sheep_effect/heal/tick

scoreboard players add @e[tag=sheep_heal_mark] s_heal_time 1
execute as @e[scores={s_heal_time=1..}] at @s run function sheep:sheep_effect/heal/particle
execute as @e[scores={s_heal_time=1..}] at @s run tp @s ~ ~0.25 ~
kill @e[scores={s_heal_time=10..}]
