import math
command = 'particle minecraft:entity_effect ~{:.3f} ~ ~{:.3f} 1 0.5 0 1 0 normal'
num = 12
radius = 5

for i in range(0, num):
    x = radius*math.sin(2*math.pi*i/num)
    y = radius*math.cos(2*math.pi*i/num)
    print(command.format(x, y))