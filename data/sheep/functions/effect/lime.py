import math

command = 'particle minecraft:entity_effect ~{:.3f} ~ ~{:.3f} 1 1 0 1 0 normal'
num = 16
radius = 7

step = 360/num
for i in range(num):
	angle = step*i/360*2*math.pi
	x = radius * math.sin(angle)
	y = radius * math.cos(angle)
	print(command.format(x, y))