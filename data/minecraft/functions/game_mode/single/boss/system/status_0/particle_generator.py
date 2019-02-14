import math


part = 50
r = 5
format_sentence = "particle minecraft:flame ~{:.3f} 13 {:.3f} 0.0001 0.0001 0.0001 0.001 1 force @a"

for i in range(part):
	print(format_sentence.format(math.cos(part/180*math.pi*i)*r,math.sin(part/180*math.pi*i)*r))
