import math

def qiumian_to_zhijiao(r, phi, omega):
	z = radius*math.sin(omega)
	x = radius*math.sin(omega)*math.cos(phi)
	y = radius*math.sin(omega)*math.sin(phi)
	return (x, y, -z)

command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1 normal'
parts = 20
radius = 4

for i in range(parts):
	for j in range(parts):
		cood = qiumian_to_zhijiao(radius, 2*math.pi/parts*i, 2*math.pi/parts*j)
		print(command.format(cood[0], cood[1], cood[2]))