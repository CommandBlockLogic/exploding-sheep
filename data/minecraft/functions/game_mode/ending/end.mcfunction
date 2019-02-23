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
tag @a remove team_leader

# clear score
execute as @a[scores={s_ulti_time=1..}] run function sheep:ultimate/end
#scoreboard players reset * s_class
#scoreboard players reset * s_launch_type
#scoreboard players reset * death_boss

scoreboard players reset *
execute if block -178 8 -125 minecraft:stone_bricks run scoreboard players set game_mode_status system 0
execute if block -178 8 -125 minecraft:cracked_stone_bricks run scoreboard players set game_mode_status system 1
scoreboard players set 游戏开始 pve_system 0

# clear entity
kill @e[type=!player]

function game_mode/free/main