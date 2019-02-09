import math

def qiumian_to_zhijiao(r, phi, omega):
	z = radius*math.sin(omega)
	x = radius*math.sin(omega)*math.cos(phi)
	y = radius*math.sin(omega)*math.sin(phi)
	return (x, y, z)

command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~{:.3f} ~{:.3f} 0 0 0 1 1 normal'
dots = 20
radius = 4
# 最大弧长 点之间间隔
arc_len = 2*math.pi*radius/dots



for i in range(dots+1):
	# 最大弧长对应平面角
	angle = 2*math.pi/dots * i
	# 当前切面对应半径
	current_radius = abs(math.sin(angle)*radius)
	# 当前可分弧段数
	parts = math.ceil(2*math.pi*current_radius/arc_len)
	if parts == 0:
		parts = 1
	# 当前弧段对应角度
	current_angle = 2*math.pi/parts
	# 循环
	for j in range(parts):
		# 直角坐标
		cood = qiumian_to_zhijiao(radius, 2*math.pi/parts*j, angle)
		print(command.format(cood[0], cood[1], cood[2]))
