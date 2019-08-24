execute if score sys tick matches 0.. run scoreboard players add sys tick 1
execute if score sys tick matches 0..360 run function anmie:1/scene
execute if score sys tick matches 361..840 run function anmie:2/scene
execute if score sys tick matches 841..1360 run function anmie:3/scene

execute as @e[tag=ani] run data merge entity @s {DisabledSlots:2039583}
execute as @e[tag=ay] unless data entity @s ArmorItems[{id:"minecraft:player_head"}] run function anmie:add_head
execute as @e[tag=a_blue] unless data entity @s ArmorItems[{id:"minecraft:player_head"}] run function anmie:add_head
execute as @e[tag=a_red] unless data entity @s ArmorItems[{id:"minecraft:player_head"}] run function anmie:add_head

# txt
execute if score sys tick matches 0..99 run title @a actionbar ["在还没有圣坛的年代，沙漠中的x和草原上的y曾是互帮互助的邻居。"]
execute if score sys tick matches 100..219 run title @a actionbar ["居住在河的两岸，他们交换自己采集的资源。"]
execute if score sys tick matches 220..359 run title @a actionbar ["日子虽然清苦，但在互帮互助之下，没有什么困难不能解决。"]
execute if score sys tick matches 360..419 run title @a actionbar ["但是随着圣坛天降，日子开始不太一样了。"]
execute if score sys tick matches 420..539 run title @a actionbar ["已经不知道是谁发现，圣坛会产出能让劳作更为轻松的水晶。"]
execute if score sys tick matches 540..679 run title @a actionbar ["村民们开始去圣坛中采掘水晶，两个村子的生活也一天天好了起来。"]
execute if score sys tick matches 680..739 run title @a actionbar ["可这天赐的水晶并不是无穷无尽的，所有人都注意到了水晶的减少。"]
execute if score sys tick matches 740..839 run title @a actionbar ["大家都习惯了优渥的生活，没有人愿意回到以前那贫苦的时代。"]
execute if score sys tick matches 840..1039 run title @a actionbar ["于是围绕水晶的争夺当然无法避免。"]
execute if score sys tick matches 1040..1109 run title @a actionbar ["在为圣坛刀剑相向之时，他们惊异的发现圣坛中最后的水晶变成了威力巨大的武器。"]
execute if score sys tick matches 1110..1199 run title @a actionbar ["仇恨已经刻入人心，他们再不复往日的友好，"]
execute if score sys tick matches 1200..1280 run title @a actionbar ["为了圣坛中偶尔出现的些许水晶展开了旷日持久的战斗……"]

