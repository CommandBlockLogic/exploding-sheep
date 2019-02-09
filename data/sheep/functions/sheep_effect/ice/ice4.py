import math

class Sphere(object):
	def __init__(self, radial = 3.5, polar = 0.0, azimuthal = 0.0):
		self.radial = radial
		self.polar = polar
		self.azimuthal = azimuthal

	def toCartesian(self):
		r = math.sin(self.azimuthal) * self.radial
		x = math.cos(self.polar) * r
		y = math.sin(self.polar) * r
		z = math.cos(self.azimuthal) * self.radial
		return x, y, z

def splot(limit):
	s = Sphere()

	n = int(math.ceil(math.sqrt((limit - 2) / 4)))
	azimuthal = 0.5 * math.pi / n
	for a in range(-n, n + 1):
		s.polar = 0
		size = (n - abs(a)) * 4 or 1
		polar = 2 * math.pi / size
		for i in range(size):
			yield s.toCartesian()
			s.polar += polar
		s.azimuthal += azimuthal

parts=80
		
for point in splot(parts):
	print("particle minecraft:dust 0 1 1 1 ~%f ~%f ~%f 0 0 0 1 1 normal" % point)