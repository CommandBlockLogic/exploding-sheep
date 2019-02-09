import math
import random

command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1 normal'
radius = 4

for i in range(100):
	r2 = 1
	while r2 >= 1 :
		u = random.random()*2-1
		v = random.random()*2-1
		r2 = u**2+v**2
	x = radius*2*u*math.sqrt(1-r2)
	y = radius*2*v*math.sqrt(1-r2)
	z = radius*1-2*r2
	print(command.format(x, y, z))