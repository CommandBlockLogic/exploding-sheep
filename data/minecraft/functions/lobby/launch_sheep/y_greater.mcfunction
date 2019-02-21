# lobby/launch_sheep/y_greater

# vx vz = (vy+sqrt(-2*g*5))/(2*y_0) * x_0
scoreboard players set var10 system_cal 0
scoreboard players operation var10 system_cal = const_minus_2 system_cal
scoreboard players operation var10 system_cal *= const0 system_cal
scoreboard players operation var10 system_cal *= const1 system_cal

scoreboard players set var100 system_cal 0
scoreboard players operation var100 system_cal = var10 system_cal
function lobby/launch_sheep/sqrt_system
scoreboard players operation var10 system_cal = var100 system_cal
scoreboard players operation var10 system_cal *= const_minus_1 system_cal
scoreboard players operation var10 system_cal += var11 system_cal

scoreboard players set var12 system_cal 0
scoreboard players operation var12 system_cal = var10 system_cal
scoreboard players operation var10 system_cal *= var3 system_cal
scoreboard players operation var12 system_cal *= var5 system_cal
scoreboard players operation var10 system_cal /= const_2 system_cal
scoreboard players operation var10 system_cal /= var4 system_cal
scoreboard players operation var12 system_cal /= const_2 system_cal
scoreboard players operation var12 system_cal /= var4 system_cal
