# tick



function sheep:tick

execute as @a[nbt=!{Inventory:[{Slot:0b,tag:{item_num:1}}]}] run function sheep:item/cannon
execute as @a[nbt=!{Inventory:[{Slot:1b,tag:{item_num:2}}]}] run function sheep:item/fan
execute as @a[nbt=!{Inventory:[{Slot:8b,tag:{item_num:3}}]}] run function sheep:item/wools
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4}}]}] run function sheep:item/wools