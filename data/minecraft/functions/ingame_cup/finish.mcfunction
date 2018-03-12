# ingame_cup/finish

title @a times 10 100 10
title @a title ["祭祀顺利完成"]
execute if score game_cup_phase system matches 5..5 run title @a subtitle [{"text":"红石部落","color":"red"},"成员获得短暂伤害提升"]
execute if score game_cup_phase system matches 10..10 run title @a subtitle [{"text":"青金石部落","color":"blue"},"成员获得短暂伤害提升"]

function ingame_after/main