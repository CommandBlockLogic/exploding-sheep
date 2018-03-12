# sheep:reload/tick

# init scoreboard
scoreboard players add @a s_bullet 0
scoreboard players add @a s_energy 0

# auto reload sheep
execute as @a if score @s s_bullet < @s s_max_bullet run scoreboard players add @s s_cd 1
scoreboard players add @a[scores={s_cd=20..}] s_bullet 1
scoreboard players set @a[scores={s_cd=20..}] s_cd 0

# recover energy
scoreboard players add @a[scores={s_energy=..99}] s_energy 1

# display
function sheep:reload/display