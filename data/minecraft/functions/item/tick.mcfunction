# keep_item/tick

# check player's item
# hotbar 0-8
execute as @a[scores={keep_item=2}] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:0b,tag:{display:{Name:"[{\"text\":\"小羊大炮\",\"italic\":false}]"}}}]}] run function minecraft:item/error/all
execute as @a[scores={keep_item=2}] unless entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:1b,tag:{display:{Name:"[{\"text\":\"芭蕉扇\",\"italic\":false}]"}}}]}] run function minecraft:item/error/all
execute as @a[scores={keep_item=1..2}] unless entity @s[nbt={Inventory:[{id:"minecraft:white_wool",Slot:3b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:3b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2}] unless entity @s[nbt={Inventory:[{id:"minecraft:gray_wool",Slot:4b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:4b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2}] unless entity @s[nbt={Inventory:[{id:"minecraft:blue_wool",Slot:5b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:5b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2}] unless entity @s[nbt={Inventory:[{id:"minecraft:red_wool",Slot:6b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:6b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2}] unless entity @s[nbt={Inventory:[{id:"minecraft:light_blue_wool",Slot:7b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:7b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2}] unless entity @s[nbt={Inventory:[{id:"minecraft:pink_wool",Slot:8b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:barrier",Slot:8b}]}] run function minecraft:item/error/wool_armor
# offhand
execute as @a[scores={keep_item=1..2,s_launch_type=1..}] unless entity @s[nbt={Inventory:[{id:"minecraft:white_wool",Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:gray_wool",Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:blue_wool",Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:red_wool",Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:light_blue_wool",Slot:-106b}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:pink_wool",Slot:-106b}]}] run function minecraft:item/error/wool_armor
# armor
execute as @a[scores={keep_item=1..2},team=red] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=red] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=red] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=red] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=blue] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet",Slot:103b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=blue] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate",Slot:102b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=blue] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings",Slot:101b}]}] run function minecraft:item/error/wool_armor
execute as @a[scores={keep_item=1..2},team=blue] unless entity @s[nbt={Inventory:[{id:"minecraft:leather_boots",Slot:100b}]}] run function minecraft:item/error/wool_armor

# kill item entity
kill @e[type=item]