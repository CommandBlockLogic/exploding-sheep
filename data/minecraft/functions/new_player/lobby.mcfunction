# new_player/lobby

#title @s times 5 100 5
#title @s title ["地陷圣坛"]
#title @s subtitle [{"text":"欢迎您的加入","color":"aqua"}]


tellraw @s ["§7§o                   (BB测试第二阶段)大地下陷，天降圣坛。"]
tellraw @s ["§7§o    原本分河而居的两个部落，因向往圣坛的力量而开始了战争。"]
tellraw @s [""]
tellraw @s ["    你手中第一格的物品: ",{"text":"羊羊大炮","bold":true}]
tellraw @s ["          右键能够发射神奇羊羊，是你参战的主要武器。"]
tellraw @s ["    你手中第二格的物品: ",{"text":"芭蕉扇","bold":true,"color":"green"}]
tellraw @s ["          拥有驾驭风的力量，右键挥动可吹动玩家和羊羊。"]
tellraw @s [""]
tellraw @s ["§7§o        在大厅一角可切换羊羊类型，获得更多样化的能力。"]
tellraw @s ["§7§o           加入部落，选择模式，开始游戏吧！",{"text":"点击这里播放背景动画","color":"white","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger tellraw_anime set 1"}}]

scoreboard players enable @s tellraw_anime
tag @s add old_player