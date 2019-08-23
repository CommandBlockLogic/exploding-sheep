# player_death/message/kill_by_himself

execute if score @s s_sheep_type matches 1 run tellraw @a ["-- ",{"selector":"@s"}," 被 自己 用[",{"text":"可爱的","color":"white"},{"text":"小白羊","color":"white"},"]可爱到了。"," --"]
execute if score @s s_sheep_type matches 3 run tellraw @a ["-- ",{"selector":"@s"}," 被 自己 用[",{"text":"快快的","color":"white"},{"text":"小黄羊","color":"yellow"},"]撞飞了。"," --"]
execute if score @s s_sheep_type matches 4 run tellraw @a ["-- ",{"selector":"@s"}," 被 自己 用[",{"text":"匆忙的","color":"white"},{"text":"小红羊","color":"red"},"]吓晕了。"," --"]
execute if score @s s_sheep_type matches 101 run tellraw @a ["-- ",{"selector":"@s"}," 被 自己 用[",{"text":"拥挤的","color":"white"},{"text":"超灰羊","color":"gray"},"]夹住了。"," --"]
execute if score @s s_sheep_type matches 102 run tellraw @a ["-- ",{"selector":"@s"}," 被 自己 用[",{"text":"乖巧的","color":"white"},{"text":"超紫羊","color":"dark_purple"},"]侵犯了。"," --"]
execute if score @s s_sheep_type matches 201 run tellraw @a ["-- ",{"selector":"@s"}," 被 自己 用[",{"text":"正义的","color":"white"},{"text":"超蓝羊","color":"blue"},"]审判了。"," --"]

scoreboard players remove @s kill_player 1
