# lobby/launch_sheep/tick

# set type
execute unless score spg_sheep_launcher_type system matches 1.. run scoreboard players set spg_sheep_launcher_type system 1
scoreboard players operation spg_sheep_launcher_type system = @e[type=minecraft:sheep,tag=sheep_sheep,tag=!sheep_shot_by_launcher,x=-181.0,y=18.0,z=-167.0,dx=2.0,dy=1.0,dz=2.0,sort=nearest,limit=1] s_sheep_type

# shoot
scoreboard players add @e[tag=system_fan_mark] system_time 1
execute as @e[tag=system_fan_mark,scores={system_time=30..}] at @s if entity @a[x=-214,y=5,z=-204,dx=74,dy=60,dz=70,gamemode=adventure] run function lobby/launch_sheep/main
scoreboard players set @e[tag=system_fan_mark,scores={system_time=30..}] system_time 1
