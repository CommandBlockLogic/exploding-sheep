# sheep:player_type/change

function minecraft:item/cannon

scoreboard players add @s s_launch_type 1
scoreboard players add @s[tag=!sheep_own_heavy,scores={s_launch_type=2}] s_launch_type 1
scoreboard players add @s[tag=!sheep_own_fast,scores={s_launch_type=3}] s_launch_type 1
scoreboard players add @s[tag=!sheep_own_air,scores={s_launch_type=4}] s_launch_type 1
scoreboard players add @s[tag=!sheep_own_web,scores={s_launch_type=5}] s_launch_type 1
scoreboard players add @s[tag=!sheep_own_heal,scores={s_launch_type=6}] s_launch_type 1
scoreboard players set @s[scores={s_launch_type=7..}] s_launch_type 1

function minecraft:item/offhand_wool