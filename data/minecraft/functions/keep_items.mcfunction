# keep_items

function sheep:change_color
execute as @a[gamemode=!creative] run function minecraft:item_clear

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
execute as @a[scores={s_class=1003},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:1003}}]}] run function sheep:item/wools
execute as @a[scores={s_class=1004},nbt=!{Inventory:[{Slot:8b,tag:{item_num:3,wool_type:1004}}]}] run function sheep:item/wools

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
execute as @a[scores={s_launch_type=1003,s_energy=100..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:1003}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1004,s_energy=30..},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,wool_type:1004}}]}] run function sheep:item/wools

execute as @a[scores={s_launch_type=1,s_energy=..49},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=2,s_energy=..79},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:2}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=3,s_energy=..59},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:3}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=4,s_energy=..89},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:4}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=5,s_energy=..79},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:5}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=6,s_energy=..119},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:6}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1001,s_energy=..99},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1001}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1002,s_energy=..99},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1002}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1003,s_energy=..99},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1003}}]}] run function sheep:item/wools
execute as @a[scores={s_launch_type=1004,s_energy=..99},nbt=!{Inventory:[{Slot:-106b,tag:{item_num:4,glass_type:1004}}]}] run function sheep:item/wools


execute if score game_status system matches 0 as @a[nbt=!{Inventory:[{Slot:7b,tag:{item_num:5,item_type:1}}]}] run replaceitem entity @s hotbar.7 minecraft:stone_bricks{item_num:5,item_type:1,display:{Name:"[{\"text\":\"丢掉回城\",\"italic\":false}]",Lore:["§r§7回城砖§r","§r§7把它丢出去回到大厅§r"]}} 1
execute if score game_status system matches 105 as @a[nbt=!{Inventory:[{Slot:7b,tag:{item_num:5,item_type:1}}]}] run replaceitem entity @s hotbar.7 minecraft:stone_bricks{item_num:5,item_type:1,display:{Name:"[{\"text\":\"丢掉回城\",\"italic\":false}]",Lore:["§r§7回城砖§r","§r§7把它丢出去回到大厅§r"]}} 1
execute unless score game_status system matches 0 unless score game_status system matches 105 as @a[scores={quick_back=0},nbt=!{Inventory:[{Slot:7b,tag:{item_num:5,item_type:2}}]}] run replaceitem entity @s hotbar.7 minecraft:coal_block{item_num:5,item_type:2,display:{Name:"[{\"text\":\"快速传送 \",\"italic\":false},{\"text\":\"关\",\"color\":\"white\"},{\"text\":\" 丢出以切换状态\",\"color\":\"white\"}]",Lore:["§r§7快速传送§r","§r§7把它丢出去切换快速传送状态§r"]}} 1
execute unless score game_status system matches 0 unless score game_status system matches 105 as @a[scores={quick_back=1},nbt=!{Inventory:[{Slot:7b,tag:{item_num:5,item_type:3}}]}] run replaceitem entity @s hotbar.7 minecraft:gold_block{item_num:5,item_type:3,display:{Name:"[{\"text\":\"快速传送 \",\"italic\":false},{\"text\":\"开\",\"color\":\"yellow\"},{\"text\":\" 丢出以切换状态\",\"color\":\"white\"}]",Lore:["§r§7快速传送§r","§r§7把它丢出去切换快速传送状态§r"]}} 1

execute unless score game_status system matches 5 as @a[team=,nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,boots_type:1}}]}] run function sheep:item/boots
execute unless score game_status system matches 5 as @a[team=red,nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,boots_type:2}}]}] run function sheep:item/boots
execute unless score game_status system matches 5 as @a[team=blue,nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,boots_type:3}}]}] run function sheep:item/boots
execute unless score game_status system matches 5 as @a[team=yellow,nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,boots_type:4}}]}] run function sheep:item/boots
execute unless score game_status system matches 5 as @a[scores={s_class=6},nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,sub_boots_type:1}}]}] run function sheep:item/boots
execute unless score game_status system matches 5 as @a[scores={s_class=7..},nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,sub_boots_type:0}}]}] run function sheep:item/boots
execute unless score game_status system matches 5 as @a[scores={s_class=..5},nbt=!{Inventory:[{Slot:100b,tag:{item_num:6,sub_boots_type:0}}]}] run function sheep:item/boots