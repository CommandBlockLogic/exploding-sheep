# sheep:reload/tick

# auto reload
scoreboard players set @a s_max_energy 200
scoreboard players set @a[scores={s_class=1}] s_max_energy 300
scoreboard players add @a s_energy 0
execute as @a if score @s s_energy < @s s_max_energy run scoreboard players add @s s_energy 1
execute as @a if score @s s_energy > @s s_max_energy store result score @s s_energy run scoreboard players get @s s_max_energy

# fan cd
scoreboard players add @a s_fan_num 0
scoreboard players add @a[scores={s_fan_num=..1}] s_fan_cd 1
scoreboard players add @a[scores={s_fan_cd=15..}] s_fan_num 1
scoreboard players set @a[scores={s_fan_cd=15..}] s_fan_cd 0

# display
function sheep:reload/display