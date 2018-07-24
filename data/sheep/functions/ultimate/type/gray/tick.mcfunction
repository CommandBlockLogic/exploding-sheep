# sheep:ultimate/type/gray/tick

# scores
scoreboard players add @s s_ulti_dura 1
scoreboard players add @s s_ulti_inter 1
scoreboard players set @s[scores={s_ulti_inter=10..}] s_ulti_inter 0
scoreboard players set @s s_energy 0

# launch
execute as @s[scores={s_ulti_inter=5..}] at @s anchored eyes run function sheep:launch/main

# end
execute as @s[scores={s_ulti_dura=200..}] run function sheep:ultimate/end