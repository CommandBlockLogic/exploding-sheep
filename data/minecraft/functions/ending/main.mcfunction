# ending/main

# change flag
scoreboard players set game_status system 8964
scoreboard players set system_ending_time system 200

title @a subtitle ["10秒后回到大厅..."]


# clear bossbar
bossbar set minecraft:score_time visible false
bossbar remove minecraft:score_time 