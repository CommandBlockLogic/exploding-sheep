# sheep:reload/tick

# auto reload
scoreboard players set @a s_max_energy 200
scoreboard players set @a[scores={s_class=1}] s_max_energy 250
execute as @a if score @s s_energy < @s s_max_energy run scoreboard players add @s s_energy 1
execute as @a if score @s s_energy > @s s_max_energy store result score @s s_energy run scoreboard players get @s s_max_energy
# display
function sheep:reload/display