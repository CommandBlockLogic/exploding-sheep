# death/respawn

# replace item
function minecraft:select_type/give_weapon
function minecraft:select_type/display

# tp
tp @s[team=blue] 11 39 50
tp @s[team=red] 94 38 51

# message
tellraw @a [{"text":">> ","color":"white"},{"selector":"@s"},"回来啦！"]