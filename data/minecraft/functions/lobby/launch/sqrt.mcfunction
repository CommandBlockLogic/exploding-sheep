# lobby/launch/sqrt

# s_temp7的根号返回s_temp7
scoreboard players set @s s_temp1 500
scoreboard players set @s s_temp2 2
scoreboard players set @s s_temp3 0
# k=(k+n/k)2 牛顿迭代10次
scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2

scoreboard players operation @s s_temp3 = @s s_temp7
scoreboard players operation @s s_temp3 /= @s s_temp1
scoreboard players operation @s s_temp1 += @s s_temp3
scoreboard players operation @s s_temp1 /= @s s_temp2
# 返回s_temp7
scoreboard players operation @s s_temp7 = @s s_temp1