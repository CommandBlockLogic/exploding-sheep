# player_death/message/kill_by_player

execute if score @s s_sheep_type matches 1 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"可爱的","color":"white"},{"text":"小白羊","color":"white"},"]可爱到了."," --"]
execute if score @s s_sheep_type matches 3 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"快快的","color":"white"},{"text":"小黄羊","color":"yellow"},"]撞飞了."," --"]
execute if score @s s_sheep_type matches 4 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"匆忙的","color":"white"},{"text":"小红羊","color":"red"},"]吓晕了."," --"]
execute if score @s s_sheep_type matches 101 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"拥挤的","color":"white"},{"text":"超灰羊","color":"gray"},"]夹住了."," --"]
execute if score @s s_sheep_type matches 102 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"乖巧的","color":"white"},{"text":"超紫羊","color":"dark_purple"},"]侵犯了."," --"]
execute if score @s s_sheep_type matches 103 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"智慧的","color":"white"},{"text":"超柠羊","color":"green"},"]压制了."," --"]
execute if score @s s_sheep_type matches 201 run tellraw @a ["-- ",{"selector":"@s"}," 被 ",{"selector":"@a[tag=player_killer]"}," 用[",{"text":"正义的","color":"white"},{"text":"超蓝羊","color":"blue"},"]审判了."," --"]

scoreboard players add @a[tag=player_killer] kill_player 1
scoreboard players set number_ratio system 2
scoreboard players set number_ten system 10
scoreboard players set @s system_temp1 0
scoreboard players operation @s system_temp1 = @s core_number
scoreboard players operation @s system_temp1 *= number_ten system
scoreboard players operation @s system_temp1 /= number_ratio system
scoreboard players operation @a[tag=player_killer,limit=1] core_number += @s system_temp1