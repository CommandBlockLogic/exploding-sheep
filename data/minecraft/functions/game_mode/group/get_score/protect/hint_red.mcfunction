# game_mode/group/get_score/protect/hint_red

tellraw @a[team=red] [">> ",{"text":"我方","color":"red"},"水晶处于保护中! 对方羊羊无法穿透屏障!"]
tellraw @a[team=blue] [">> ",{"text":"对方","color":"red"},"水晶处于保护中! 屏障内发射羊羊才可破坏!"]