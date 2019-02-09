import math

def qiumian_to_zhijiao(r, phi, theta):
	z = r*math.cos(theta)
	x = r*math.cos(theta)*math.cos(phi)
	y = r*math.cos(theta)*math.sin(phi)
	return (x, y, z)

command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1 normal'
parts = 20
radius = 4

for i in range(parts):
	for j in range(parts):
		cood = qiumian_to_zhijiao(radius, 2*math.pi/parts*i, math.pi/parts*j)
		print(command.format(cood[0], cood[1], cood[2]))