
partten = (
	(0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),
	(0,0,0,0,1,1,0,1,0,1,1,0,0,0,0),
	(0,0,0,0,0,0,1,1,1,0,0,0,0,0,0),
	(0,0,0,1,1,0,0,1,0,0,1,1,0,0,0),
	(0,1,0,1,0,0,1,1,1,0,0,1,0,1,0),
	(0,1,0,0,0,1,0,1,0,1,0,0,0,1,0),
	(0,0,1,0,1,0,0,1,0,0,1,0,1,0,0),
	(1,1,1,1,1,1,1,0,1,1,1,1,1,1,1),
	(0,0,1,0,1,0,0,1,0,0,1,0,1,0,0),
	(0,1,0,0,0,1,0,1,0,1,0,0,0,1,0),
	(0,1,0,1,0,0,1,1,1,0,0,1,0,1,0),
	(0,0,0,1,1,0,0,1,0,0,1,1,0,0,0),
	(0,0,0,0,0,0,1,1,1,0,0,0,0,0,0),
	(0,0,0,0,1,1,0,1,0,1,1,0,0,0,0),
	(0,0,0,0,0,0,0,1,0,0,0,0,0,0,0))
'''
partten = (
	(0,0,0,1,0,1,0,0,0),
	(0,1,0,0,1,0,0,1,0),
	(0,0,1,0,0,0,1,0,0),
	(1,0,0,0,1,0,0,0,1),
	(0,1,0,1,0,1,0,1,0),
	(1,0,0,0,1,0,0,0,1),
	(0,0,1,0,0,0,1,0,0),
	(0,1,0,0,1,0,0,1,0),
	(0,0,0,1,0,1,0,0,0)
)
'''

#command = 'particle minecraft:block ice ~{:.3f} ~ ~{:.3f} 0 0 0 1 1 normal'
command = 'particle minecraft:dust 0 1 1 1 ~{:.3f} ~ ~{:.3f} 0 0 0 1 1 normal'

for item in partten:
	for point in item:
		if point==0:
			print(' ',end='')
		else:
			print('#',end='')
	print()

center = (7, 7)
ratio = 3/7

for row in range(len(partten)):
	for col in range(len(partten[row])):
		if partten[row][col]==1:
			print(command.format((row-center[0])*ratio, (col-center[1])*ratio))
