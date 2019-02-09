import math

def qiumian_to_zhijiao(r, phi, omega):
	z = radius*math.sin(omega)
	x = radius*math.sin(omega)*math.cos(phi)
	y = radius*math.sin(omega)*math.sin(phi)
	return (x, y, z)

command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1 normal'
parts = 20
radius = 4


# 最大弧长 点之间间隔
arc_len = 2*math.pi*radius/parts

omega_start = -math.pi/2
omega_stop = math.pi/2
omega_step = math.pi/parts

omega = omega_start
while omega <= omega_stop:
	# 当前半径
	current_radius = radius*math.cos(omega)
	# 最大弧长在这个切面中的个数
	current_parts = math.ceil(2*math.pi*current_radius/arc_len)
	if current_parts == 0:
		current_parts = 1
	phi_start = 0
	phi_stop = 2*math.pi
	phi_step = 2*math.pi/current_parts
	phi = phi_start
	while phi <= phi_stop:
		cood = qiumian_to_zhijiao(radius, phi, omega)
		print(command.format(cood[0], cood[1], cood[2]))
		phi += phi_step
	omega += omega_step

