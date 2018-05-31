# sheep:reload/tick

# auto reload
scoreboard players add @a s_energy 1
scoreboard players set @a s_max_energy 100
execute as @a if score @s s_energy > @s s_max_energy run scoreboard players remove @s s_energy 1

# display
function sheep:reload/display