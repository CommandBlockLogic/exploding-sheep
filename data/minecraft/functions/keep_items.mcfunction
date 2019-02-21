# keep_items

function sheep:change_color
#execute as @a run function minecraft:item_clear

execute as @a[nbt=!{Inventory:[{Slot:0b,tag:{item_num:1}}]}] run function sheep:item/cannon
execute as @a[nbt=!{Inventory:[{Slot:1b,tag:{item_num:2}}]},scores={s_ulti_time=..59}] run function sheep:item/fan
execute as @a[nbt={Inventory:[{Slot:1b}]},scores={s_ulti_time=60..}] run replaceitem entity @s hotbar.1 minecraft:air

execute as @a[scores={s_class=1},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:1}}]}] run function sheep:item/wools
execute as @a[scores={s_class=2},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:2}}]}] run function sheep:item/wools
execute as @a[scores={s_class=3},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:3}}]}] run function sheep:item/wools
execute as @a[scores={s_class=4},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:4}}]}] run function sheep:item/wools
execute as @a[scores={s_class=5},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:5}}]}] run function sheep:item/wools
execute as @a[scores={s_class=6},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:6}}]}] run function sheep:item/wools
execute as @a[scores={s_class=101},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:101}}]}] run function sheep:item/wools
execute as @a[scores={s_class=102},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:102}}]}] run function sheep:item/wools
execute as @a[scores={s_class=201},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:201}}]}] run function sheep:item/wools
execute as @a[scores={s_class=202},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:202}}]}] run function sheep:item/wools
execute as @a[scores={s_class=1001},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:1001}}]}] run function sheep:item/wools
execute as @a[scores={s_class=1002},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:1002}}]}] run function sheep:item/wools

execute as @a[scores={s_launch_type=1,s_energy=50..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:1}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=2,s_energy=80..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:2}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=3,s_energy=60..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:3}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=4,s_energy=90..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:4}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=5,s_energy=80..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:5}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=6,s_energy=120..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:6}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=101},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:101}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=102},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:102}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=201},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:201}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=202},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:202}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1001,s_energy=100..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:1001}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1002,s_energy=100..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:1002}}]}] run function sheep:item/wools

execute as @a[scores={s_launch_type=1,s_energy=..49},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=2,s_energy=..79},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:2}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=3,s_energy=..59},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:3}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=4,s_energy=..89},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:4}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=5,s_energy=..79},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:5}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=6,s_energy=..119},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:6}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1001,s_energy=..99},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1001}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1002,s_energy=..99},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1002}}]}] run function sheep:item/wools


execute if score game_status system matches 0 as @a[nbt=!{Inventory:[{Slot:7b,tag:{item_num:5}}]}] run replaceitem entity @s hotbar.7 minecraft:stone_bricks{item_num:5,display:{Name:"[{\"text\":\"丢掉回城\",\"italic\":false}]",Lore:["§r§7回城砖§r","§r§7把它丢出去回到大厅§r"]}} 1
