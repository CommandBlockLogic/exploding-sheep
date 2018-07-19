# free/tick

# class
function lobby/change_class
# team
function lobby/change_team
# enter game
function lobby/enter_game
# effect
function lobby/effect


# summon blocks
function core/recover/red
function core/recover/blue
function core/recover/purple


# back item
execute as @a[nbt=!{Inventory:[{Slot:7b,tag:{item_num:5}}]}] run replaceitem entity @s hotbar.7 minecraft:stone_bricks{item_num:5,display:{Name:"[{\"text\":\"丢掉回城\",\"italic\":false}]",Lore:["§r§7回城砖§r","§r§7把它丢出去回到大厅§r"]}} 1
tp @a[scores={drop_brick=1..}] -166 9 -118
scoreboard players reset @a[scores={drop_brick=1..}] drop_brick

