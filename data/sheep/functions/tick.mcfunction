# sheep:tick

# shoot or fan
execute as @a[scores={s_launch=1..,s_bullet=2..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_bullet=3..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_bullet=4..,s_launch_type=3..4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_bullet=5..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_bullet=7..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:launch/main
execute as @a[scores={s_launch=1..,s_energy=40..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
scoreboard players set @a[scores={s_launch=1..}] s_launch 0

# reload
function sheep:reload/tick
# sheep blow
function sheep:blow/tick
# fan
function sheep:fan/tick
# sheep
# normal sheep
execute as @e[tag=sheep_sheep] run function sheep:fly/tick

# web
scoreboard players add @e[tag=sheep_web_mark] s_web_time 1
execute as @e[scores={s_web_time=1}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:cobweb keep
execute as @e[scores={s_web_time=1}] at @s run particle block cobweb ~ ~0.5 ~ 2 0 2 0 200
execute as @e[scores={s_web_time=101..}] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:cobweb
kill @e[scores={s_web_time=101..}]

# change type
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{display:{Name:"[{\"text\":\"小羊大炮\",\"italic\":false}]"}}}]}] run function sheep:player_type/change
