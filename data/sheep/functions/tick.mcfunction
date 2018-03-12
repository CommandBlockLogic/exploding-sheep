# sheep:tick

# shoot or fan
execute as @a[scores={s_launch=1..,s_bullet=2..,s_launch_type=..1},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:sheep/main
execute as @a[scores={s_launch=1..,s_bullet=3..,s_launch_type=2},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:sheep/main
execute as @a[scores={s_launch=1..,s_bullet=4..,s_launch_type=3..4},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:sheep/main
execute as @a[scores={s_launch=1..,s_bullet=5..,s_launch_type=5},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:sheep/main
execute as @a[scores={s_launch=1..,s_bullet=7..,s_launch_type=6},nbt={SelectedItemSlot:0}] at @s anchored eyes run function sheep:sheep/main
execute as @a[scores={s_launch=1..,s_energy=40..},nbt={SelectedItemSlot:1}] at @s anchored eyes positioned ^ ^ ^ run function sheep:fan/main
scoreboard players reset @a[scores={s_launch=1..}] s_launch

# reload
function sheep:reload/tick
# sheep blow
function sheep:blow/tick
# fan
function sheep:fan/tick
# sheep
function sheep:sheep/tick

# change type
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,tag:{display:{Name:"[{\"text\":\"小羊大炮\",\"italic\":false}]"}}}]}] run function sheep:player_type/change
