# game_mode/group/get_score/protect/hint_blue

tellraw @a[team=red] [">> ",{"text":"对方","color":"blue"},"水晶进入保护状态! 屏障内发射羊羊才可破坏!"]
tellraw @a[team=blue] [">> ",{"text":"我方","color":"blue"},"水晶进入保护状态! 对方羊羊无法穿透屏障!"]
