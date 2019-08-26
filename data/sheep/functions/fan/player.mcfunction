# sheep:fan/player

# give levitation
effect give @s minecraft:levitation 1 20 true
scoreboard players set @s s_push_time 3

# summon marker
summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["sheep_mark_push"]}
tp @e[tag=sheep_mark_push] ^ ^ ^ facing entity @a[tag=sheep_fanning,limit=1] eyes

# summon pusher
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}
execute as @e[tag=sheep_mark_push] at @s run summon minecraft:pig ^ ^ ^0.4 {Tags:["sheep_pusher"],Silent:1,NoAI:1,Health:1}

# kill marker and pusher
kill @e[tag=sheep_mark_push]
tp @e[tag=sheep_pusher] ~ -100 ~

# add push mark
tag @s remove spg_hit_by_launcher
execute store result score @s s_thrower_id run scoreboard players get @a[tag=sheep_fanning,limit=1] s_id
scoreboard players set @s s_sheep_type 10001
scoreboard players set @s s_kill_time 3

# advancement
advancement grant @a[tag=sheep_fanning,advancements={sheep:fan/player=false}] only sheep:fan/player
