# sheep:fan/player

# give levitation
effect give @s minecraft:levitation 1 20 true
scoreboard players set @s s_push_time 3

# summmon marker
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

# advancement
tellraw @s[advancements={sheep:fan/player=false}] ["§7§o##   你挥动芭蕉扇吹开了一名玩家!\n§7§o##   物品栏上方的数字是你能够挥动的次数, 它会慢慢补充至2. "]
advancement grant @a[tag=sheep_fanning,advancements={sheep:fan/player=false}] only sheep:fan/player
