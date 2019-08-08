import math

class Sphere(object):
	# polar 与天顶方向夹角 仰角
	# azimuth 与水平极轴方向夹角 方位角
	def __init__(self, radius = 10, polar = 0.0, azimuth = 0.0):
		self.radius = radius
		self.polar = polar
		self.azimuth = azimuth

	def toCartesian(self):
		x = self.radius * math.sin(self.polar) * math.cos(self.azimuth)
		y = self.radius * math.cos(self.polar)
		z = self.radius * math.sin(self.polar) * math.sin(self.azimuth)
		return x, y, z





parts = 7 #将四分之一球分为几部分?
command = "execute if score protect_barrier_effect system matches {0} run particle minecraft:dust 0 0.2 0.8 4 ~{1[0]:.3f} ~{1[1]:.3f} ~{1[2]:.3f} 0 0 0 1 1 normal"

s = Sphere()

polar = 0.5 * math.pi / parts
for i in range(0, parts + 1):
	s.azimuth = 0
	size = i*4 or 1 #这一行的操作 简直秀
	azimuth = 2 * math.pi / size
	for j in range(size):
		print(command.format((parts-i)*3, s.toCartesian()))
		s.azimuth += azimuth
	s.polar += polar