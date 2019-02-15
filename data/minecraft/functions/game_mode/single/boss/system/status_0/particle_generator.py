import math

score = 1
ticks = 1

part_circle = 180
part_line = 30
point = 5

range_value = 5
r = range_value
# format_sentence = "particle minecraft:flame ^{:.3f} ^ ^{:.3f} 0.0001 0.0001 0.0001 0.001 1 force @a"
format_sentence = "execute if score Boss复活冷却 boss_4_system matches {:}.. run particle minecraft:flame ~{:.3f} ~ ~{:.3f} 0.0001 0.0001 0.0001 0.001 1 force @a"
for i in range(part_circle):
	# print(format_sentence.format(math.cos(2/part_circle*math.pi*i)*r,math.sin(2/part_circle*math.pi*i)*r))
	print(format_sentence.format(score,math.cos(2/part_circle*math.pi*i)*r,math.sin(2/part_circle*math.pi*i)*r))
	score += ticks
for n in range(point):
	point_A = (math.cos(math.pi*(n*2)*2/point)*r,math.sin(math.pi*(n*2)*2/point)*r)
	point_B = (math.cos(math.pi*(n*2+2)*2/point)*r,math.sin(math.pi*(n*2+2)*2/point)*r)
	x_distance = point_B[0] - point_A[0]
	y_distance = point_B[1] - point_A[1]
	for m in range(0,part_line):
		x = point_A[0]+ x_distance / part_line * m
		y = point_A[1]+ y_distance / part_line * m
		# print(format_sentence.format(x,y))
		print(format_sentence.format(score,x,y))
		score += ticks

# format_sentence = "execute if score Boss复活冷却 boss_4_system matches {:} run particle minecraft:flame ~{:.3f} ~ ~{:.3f} 0.0001 0.0001 0.0001 0.001 1 force @a"

# while score < 410:
# 	for i in range(part_circle):
# 		# print(format_sentence.format(math.cos(2/part_circle*math.pi*i)*r,math.sin(2/part_circle*math.pi*i)*r))
# 		print(format_sentence.format(score,math.cos(2/part_circle*math.pi*i)*r,math.sin(2/part_circle*math.pi*i)*r))
# 	for n in range(point):
# 		point_A = (math.cos(math.pi*(n*2)*2/point)*r,math.sin(math.pi*(n*2)*2/point)*r)
# 		point_B = (math.cos(math.pi*(n*2+2)*2/point)*r,math.sin(math.pi*(n*2+2)*2/point)*r)
# 		x_distance = point_B[0] - point_A[0]
# 		y_distance = point_B[1] - point_A[1]
# 		for m in range(0,part_line):
# 			x = point_A[0]+ x_distance / part_line * m
# 			y = point_A[1]+ y_distance / part_line * m
# 			# print(format_sentence.format(x,y))
# 			print(format_sentence.format(score,x,y))
# 	score += ticks
# 	r -= 0.05