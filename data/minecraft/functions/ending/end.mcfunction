# ending/end

tp @a -166 9 -118
gamemode adventure @a
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar.team.blue
scoreboard objectives setdisplay sidebar.team.red

#function core/generate/home
#function core/generate/corner


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

# clear score
scoreboard players reset * s_class
scoreboard players reset * s_launch_type

function free/main