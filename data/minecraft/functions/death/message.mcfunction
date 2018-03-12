# death/message

# find killer
tag @s add sheep_fucked
execute as @a store result score @s s_temp1 run data get entity @s UUIDMost 0.0000000001
execute as @a if score @a[tag=sheep_fucked,limit=1] s_thrower_id = @s s_temp1 run tag @s add sheep_fucker
# death message
execute if entity @s[scores={s_sheep_type=1,s_kill_time=..5}] run tellraw @a [{"selector":"@s"}," was blown up by ",{"selector":"@a[tag=sheep_fucker]"}," using [",{"text":"可爱的","color":"gray"},{"text":"小白羊","color":"white"},"]"]
execute if entity @s[scores={s_sheep_type=2,s_kill_time=..5}] run tellraw @a [{"selector":"@s"}," was blown up by ",{"selector":"@a[tag=sheep_fucker]"}," using [",{"text":"蠢蠢的","color":"gray"},{"text":"小灰羊","color":"dark_gray"},"]"]
execute if entity @s[scores={s_sheep_type=3,s_kill_time=..5}] run tellraw @a [{"selector":"@s"}," was blown up by ",{"selector":"@a[tag=sheep_fucker]"}," using [",{"text":"快快的","color":"gray"},{"text":"小蓝羊","color":"blue"},"]"]
execute if entity @s[scores={s_sheep_type=4,s_kill_time=..5}] run tellraw @a [{"selector":"@s"}," was blown up by ",{"selector":"@a[tag=sheep_fucker]"}," using [",{"text":"匆忙的","color":"gray"},{"text":"小红羊","color":"red"},"]"]

# remove all
tag @a[tag=sheep_fucker] remove sheep_fucker
tag @s remove sheep_fucked
scoreboard players reset @s death_message