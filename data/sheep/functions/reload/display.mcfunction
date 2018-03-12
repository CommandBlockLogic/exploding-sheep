# sheep:reload/display

# exclude
scoreboard players add @a respawn_time 0

# display energy
xp set @a[scores={respawn_time=0}] 100 levels
xp set @a[scores={s_energy=1..10,respawn_time=0}] 74 points
xp set @a[scores={s_energy=11..20,respawn_time=0}] 148 points
xp set @a[scores={s_energy=21..30,respawn_time=0}] 222 points
xp set @a[scores={s_energy=31..40,respawn_time=0}] 296 points
xp set @a[scores={s_energy=41..50,respawn_time=0}] 370 points
xp set @a[scores={s_energy=51..60,respawn_time=0}] 444 points
xp set @a[scores={s_energy=61..70,respawn_time=0}] 518 points
xp set @a[scores={s_energy=71..80,respawn_time=0}] 592 points
xp set @a[scores={s_energy=81..90,respawn_time=0}] 666 points
xp set @a[scores={s_energy=91..100,respawn_time=0}] 740 points
# display reload time
xp set @a[scores={s_bullet=0,respawn_time=0}] 0 levels
xp set @a[scores={s_bullet=1,respawn_time=0}] 1 levels
xp set @a[scores={s_bullet=2,respawn_time=0}] 2 levels
xp set @a[scores={s_bullet=3,respawn_time=0}] 3 levels
xp set @a[scores={s_bullet=4,respawn_time=0}] 4 levels
xp set @a[scores={s_bullet=5,respawn_time=0}] 5 levels
xp set @a[scores={s_bullet=6,respawn_time=0}] 6 levels
xp set @a[scores={s_bullet=7,respawn_time=0}] 7 levels
xp set @a[scores={s_bullet=8,respawn_time=0}] 8 levels
xp set @a[scores={s_bullet=9,respawn_time=0}] 9 levels

# sound
#execute as @a[scores={s_cd=13,respawn_time=0}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.2
#execute as @a[scores={s_cd=26,respawn_time=0}] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.4
#execute as @a[scores={s_cd=39,respawn_time=0}] at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 2