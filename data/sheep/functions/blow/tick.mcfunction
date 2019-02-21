# sheep:blow/tick

# add flying time
scoreboard players add @e[tag=sheep_sheep] s_flying_time 1
scoreboard players add @e[tag=sheep_ulti_purple] s_flying_time 1
scoreboard players add @e[tag=sheep_ulti] s_flying_time 1
kill @e[scores={s_flying_time=1200..}]
kill @e[scores={s_flying_time=6000..}]

# add blow time
scoreboard players add @e[scores={s_blow_time=1..}] s_blow_time 1
# speical sheep air
scoreboard players set @e[tag=sheep_type_air,scores={s_blow_time=1..9}] s_blow_time 10
# no explode
scoreboard players set @e[tag=sheep_attr_no_explode,scores={s_blow_time=1..}] s_blow_time 1

# animation
execute as @e[scores={s_blow_time=2}] at @s run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~
execute as @e[scores={s_blow_time=2}] at @s run data merge entity @s {CustomName:"[{\"text\":\"?\",\"color\":\"yellow\"}]",CustomNameVisible:true}
execute as @e[scores={s_blow_time=6}] at @s run data merge entity @s {CustomName:"[{\"text\":\"???\",\"color\":\"gold\"}]"}
execute as @e[scores={s_blow_time=10}] at @s run data merge entity @s {CustomName:"[{\"text\":\"?????\",\"color\":\"red\"}]"}
execute as @e[scores={s_blow_time=13..}] at @s run function sheep:blow/main