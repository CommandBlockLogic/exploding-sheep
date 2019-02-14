# ending/end

tp @a -166 9 -118
gamemode adventure @a
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.red


# clear bossbar
bossbar set minecraft:score_time visible false
bossbar remove minecraft:score_time
bossbar set minecraft:red_score visible false
bossbar remove minecraft:red_score
bossbar set minecraft:blue_score visible false
bossbar remove minecraft:blue_score

# clear team
team empty blue
team empty red
team empty yellow

# reset team (pve only)
team modify red color red

# clear score
execute as @a[scores={s_ulti_time=1..}] run function sheep:ultimate/end
scoreboard players reset * s_class
scoreboard players reset * s_launch_type

# clear entity
kill @e[type=!player]

function game_mode/free/main