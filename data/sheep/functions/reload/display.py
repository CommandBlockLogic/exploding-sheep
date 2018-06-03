command = 'xp set @a[scores={{s_class=1,s_energy={:.0f}..{:.0f}}}] {:.0f} points'
#command = 'xp set @a[scores={{s_class=2..,s_energy={:.0f}..{:.0f}}}] {:.0f} points'
delta = 2
xp_max = 740
energy_max = 250
for i in range(0, 100, delta):
	print(command.format(i*energy_max/100, (i+delta)*energy_max/100-1, i*xp_max/100))
print(command.format(energy_max, 9999999, xp_max))