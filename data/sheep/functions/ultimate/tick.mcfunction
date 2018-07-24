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



# energy
scoreboard players add @a s_ulti_energy 0
scoreboard players set @a[scores={s_ulti_time=1..}] s_ulti_energy 0
scoreboard players add @a[scores={s_ulti_energy=..2000}] s_ulti_energy 1
# display
title @a[scores={s_ulti_energy=..200}] actionbar ["终极羊羊充能 [",{"text":"----------","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=201..400}] actionbar ["终极羊羊充能 [+",{"text":"---------","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=401..600}] actionbar ["终极羊羊充能 [++",{"text":"--------","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=601..800}] actionbar ["终极羊羊充能 [+++",{"text":"-------","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=801..1000}] actionbar ["终极羊羊充能 [++++",{"text":"------","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=1001..1200}] actionbar ["终极羊羊充能 [+++++",{"text":"-----","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=1201..1400}] actionbar ["终极羊羊充能 [++++++",{"text":"----","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=1401..1600}] actionbar ["终极羊羊充能 [+++++++",{"text":"---","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=1601..1800}] actionbar ["终极羊羊充能 [++++++++",{"text":"--","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=1801..2000}] actionbar ["终极羊羊充能 [+++++++++",{"text":"-","color":"dark_gray"},"]"]
title @a[scores={s_ulti_energy=2001..}] actionbar ["终极羊羊充能完毕! Q键丢出小羊大炮释放!"]
title @a[scores={s_ulti_time=1..}] actionbar ["终极羊羊蓄势待发..."]