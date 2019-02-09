import math
import random

command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1 normal'

for i in range(100):
	r2 = 1
	while r2 >= 1 :
		u = random.random()
		v = random.random()
		r2 = u**2+v**2
	x = 2*u*math.sqrt(1-r2)
	y = 2*v*math.sqrt(1-r2)
	z = 1-2*r2
	print(command.format(x, y, z))