# sheep:ultimate/tick

# sheep
execute as @e[tag=sheep_ulti] run function sheep:ultimate/sheep_ulti

# player
scoreboard players add @a s_ulti_time 0
scoreboard players add @a s_ulti_dura 0
scoreboard players add @a[scores={s_ulti_time=1..}] s_ulti_time 1
execute as @a[scores={s_ulti_time=60}] run function sheep:ultimate/player_ready

# s_ulti_time 大于1表示使用了终极羊羊 60以后表示效果已确定

# types
execute as @a[scores={s_ulti_dura=1..,s_class=101}] run function sheep:ultimate/type/gray/tick
execute as @a[scores={s_ulti_dura=1..,s_class=102}] run function sheep:ultimate/type/purple/tick