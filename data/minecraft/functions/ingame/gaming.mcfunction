# ingame/gaming

# sheep
function sheep:tick

# keep item
function minecraft:item/tick

# death detect
execute positioned 11 60 11 as @a[scores={death=1..},distance=..5] at @s run function death/main
execute as @a[scores={death_message=1..}] at @s run function death/message
execute as @a[scores={respawn_time=1..}] as @s run function death/tick

# death message timer
scoreboard players add @a s_kill_time 1

# display
execute store result bossbar game:red value run scoreboard players get game_hp_red system
execute store result bossbar game:blue value run scoreboard players get game_hp_blue system

# display
execute store result score §9青金石部落§f血量 display run scoreboard players get game_hp_blue system
execute store result score §c红石部落§f血量 display run scoreboard players get game_hp_red system

# check end
execute if score game_hp_red system matches -999..0 run function minecraft:end/blue_win
execute if score game_hp_blue system matches -999..0 run function minecraft:end/red_win