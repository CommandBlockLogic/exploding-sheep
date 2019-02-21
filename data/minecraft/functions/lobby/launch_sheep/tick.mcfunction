# lobby/launch_sheep/tick

scoreboard players add @e[tag=system_fan_mark] system_time 1
execute as @e[tag=system_fan_mark,scores={system_time=30..}] at @s if entity @a[x=-214,y=5,z=-204,dx=74,dy=60,dz=70] run function lobby/launch_sheep/main
scoreboard players set @e[tag=system_fan_mark,scores={system_time=30..}] system_time 1
