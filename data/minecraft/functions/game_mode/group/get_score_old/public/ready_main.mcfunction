# get_score/public/ready_main

# clear
function game_mode/public/game_start_clear


# score
scoreboard players set system_game_time system 2400
scoreboard players set system_twenty system 20
scoreboard players set system_sixty system 60
scoreboard players set system_second system 0
scoreboard players set system_minute system 0

scoreboard players set @a death_time_tp 0


# bossbar
bossbar set minecraft:score_time max 3000
bossbar set minecraft:score_time value 3000
bossbar set minecraft:score_time style progress
bossbar set minecraft:score_time color white
bossbar set minecraft:score_time players @a
bossbar set minecraft:score_time visible true
bossbar set minecraft:score_time name ["剩余时间   --:--"]


# count down to start
scoreboard players set system_start_countdown system 300