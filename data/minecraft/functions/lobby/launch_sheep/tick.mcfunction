# lobby/launch_sheep/tick

scoreboard players add @e[tag=system_fan_mark] system_time 1
execute as @e[tag=system_fan_mark,scores={system_time=22..}] at @s if entity @a[distance=..20] run function lobby/launch_sheep/fixed_v
scoreboard players set @e[tag=system_fan_mark,scores={system_time=22..}] system_time 1
