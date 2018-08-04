# 初始值
scoreboard players set 刷怪冷却 monster_cool 200
# 50个怪
execute unless entity @e[tag=monster,tag=monster_id_1] run scoreboard players add 怪1 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_1] if score 怪1 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -199 7 -74 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_1"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪1 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪1 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_2] run scoreboard players add 怪2 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_2] if score 怪2 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -192 5 -77 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_2"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪2 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪2 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_3] run scoreboard players add 怪3 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_3] if score 怪3 monster_cool >= 刷怪冷却 monster_cool run summon pig -185 6 -83 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_3"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_3"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪3 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪3 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_4] run scoreboard players add 怪4 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_4] if score 怪4 monster_cool >= 刷怪冷却 monster_cool run summon pig -175 5 -80 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_4"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_4"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪4 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪4 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_5] run scoreboard players add 怪5 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_5] if score 怪5 monster_cool >= 刷怪冷却 monster_cool run summon zombie -170 6 -93 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_5"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪5 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪5 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_6] run scoreboard players add 怪6 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_6] if score 怪6 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -162 5 -85 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_6"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪6 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪6 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_7] run scoreboard players add 怪7 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_7] if score 怪7 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -152 6 -88 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_7"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪7 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪7 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_8] run scoreboard players add 怪8 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_8] if score 怪8 monster_cool >= 刷怪冷却 monster_cool run summon pig -152 11 -74 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_8"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_8"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪8 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪8 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_9] run scoreboard players add 怪9 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_9] if score 怪9 monster_cool >= 刷怪冷却 monster_cool run summon pig -141 5 -79 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_9"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_9"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪9 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪9 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_10] run scoreboard players add 怪10 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_10] if score 怪10 monster_cool >= 刷怪冷却 monster_cool run summon zombie -139 6 -95 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_10"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪10 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪10 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_11] run scoreboard players add 怪11 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_11] if score 怪11 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -129 5 -88 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_11"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪11 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪11 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_12] run scoreboard players add 怪12 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_12] if score 怪12 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -130 5 -103 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_12"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪12 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪12 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_13] run scoreboard players add 怪13 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_13] if score 怪13 monster_cool >= 刷怪冷却 monster_cool run summon pig -120 6 -108 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_13"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_13"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪13 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪13 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_14] run scoreboard players add 怪14 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_14] if score 怪14 monster_cool >= 刷怪冷却 monster_cool run summon pig -120 5 -100 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_14"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_14"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪14 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪14 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_15] run scoreboard players add 怪15 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_15] if score 怪15 monster_cool >= 刷怪冷却 monster_cool run summon zombie -118 5 -93 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_15"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪15 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪15 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_16] run scoreboard players add 怪16 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_16] if score 怪16 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -108 5 -94 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_16"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪16 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪16 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_17] run scoreboard players add 怪17 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_17] if score 怪17 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -110 5 -82 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_17"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪17 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪17 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_18] run scoreboard players add 怪18 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_18] if score 怪18 monster_cool >= 刷怪冷却 monster_cool run summon pig -99 7 -86 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_18"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_18"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪18 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪18 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_19] run scoreboard players add 怪19 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_19] if score 怪19 monster_cool >= 刷怪冷却 monster_cool run summon pig -99 8 -76 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_19"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_19"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪19 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪19 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_20] run scoreboard players add 怪20 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_20] if score 怪20 monster_cool >= 刷怪冷却 monster_cool run summon zombie -110 5 -70 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_20"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪20 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪20 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_21] run scoreboard players add 怪21 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_21] if score 怪21 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -116 5 -82 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_21"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪21 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪21 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_22] run scoreboard players add 怪22 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_22] if score 怪22 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -122 5 -70 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_22"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪22 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪22 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_23] run scoreboard players add 怪23 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_23] if score 怪23 monster_cool >= 刷怪冷却 monster_cool run summon pig -122 7 -62 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_23"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_23"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪23 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪23 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_24] run scoreboard players add 怪24 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_24] if score 怪24 monster_cool >= 刷怪冷却 monster_cool run summon pig -128 5 -80 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_24"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_24"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪24 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪24 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_25] run scoreboard players add 怪25 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_25] if score 怪25 monster_cool >= 刷怪冷却 monster_cool run summon zombie -130 5 -67 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_25"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪25 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪25 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_26] run scoreboard players add 怪26 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_26] if score 怪26 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -141 6 -70 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_26"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪26 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪26 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_27] run scoreboard players add 怪27 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_27] if score 怪27 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -129 7 -60 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_27"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪27 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪27 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_28] run scoreboard players add 怪28 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_28] if score 怪28 monster_cool >= 刷怪冷却 monster_cool run summon pig -141 6 -62 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_28"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_28"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪28 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪28 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_29] run scoreboard players add 怪29 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_29] if score 怪29 monster_cool >= 刷怪冷却 monster_cool run summon pig -136 5 -58 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_29"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_29"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪29 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪29 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_30] run scoreboard players add 怪30 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_30] if score 怪30 monster_cool >= 刷怪冷却 monster_cool run summon zombie -124 6 -48 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_30"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪30 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪30 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_31] run scoreboard players add 怪31 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_31] if score 怪31 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -130 6 -38 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_31"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪31 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪31 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_32] run scoreboard players add 怪32 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_32] if score 怪32 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -140 6 -43 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_32"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪32 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪32 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_33] run scoreboard players add 怪33 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_33] if score 怪33 monster_cool >= 刷怪冷却 monster_cool run summon pig -140 5 -52 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_33"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_33"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪33 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪33 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_34] run scoreboard players add 怪34 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_34] if score 怪34 monster_cool >= 刷怪冷却 monster_cool run summon pig -147 6 -39 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_34"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_34"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪34 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪34 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_35] run scoreboard players add 怪35 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_35] if score 怪35 monster_cool >= 刷怪冷却 monster_cool run summon zombie -150 7 -59 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_35"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪35 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪35 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_36] run scoreboard players add 怪36 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_36] if score 怪36 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -153 7 -50 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_36"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪36 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪36 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_37] run scoreboard players add 怪37 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_37] if score 怪37 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -160 5 -37 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_37"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪37 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪37 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_38] run scoreboard players add 怪38 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_38] if score 怪38 monster_cool >= 刷怪冷却 monster_cool run summon pig -156 6 -29 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_38"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_38"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪38 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪38 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_39] run scoreboard players add 怪39 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_39] if score 怪39 monster_cool >= 刷怪冷却 monster_cool run summon pig -169 9 -27 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_39"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_39"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪39 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪39 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_40] run scoreboard players add 怪40 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_40] if score 怪40 monster_cool >= 刷怪冷却 monster_cool run summon zombie -174 6 -38 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_40"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪40 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪40 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_41] run scoreboard players add 怪41 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_41] if score 怪41 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -174 6 -47 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_41"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪41 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪41 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_42] run scoreboard players add 怪42 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_42] if score 怪42 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -163 5 -45 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_42"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪42 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪42 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_43] run scoreboard players add 怪43 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_43] if score 怪43 monster_cool >= 刷怪冷却 monster_cool run summon pig -167 5 -52 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_43"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_43"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪43 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪43 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_44] run scoreboard players add 怪44 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_44] if score 怪44 monster_cool >= 刷怪冷却 monster_cool run summon pig -159 7 -59 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_44"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_44"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪44 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪44 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_45] run scoreboard players add 怪45 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_45] if score 怪45 monster_cool >= 刷怪冷却 monster_cool run summon zombie -168 6 -62 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_45"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪45 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪45 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_46] run scoreboard players add 怪46 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_46] if score 怪46 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -164 8 -69 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_46"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪46 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪46 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_47] run scoreboard players add 怪47 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_47] if score 怪47 monster_cool >= 刷怪冷却 monster_cool run summon skeleton -173 6 -72 {CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_47"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]} 
execute if score 怪47 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪47 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_48] run scoreboard players add 怪48 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_48] if score 怪48 monster_cool >= 刷怪冷却 monster_cool run summon pig -181 6 -63 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_48"],Passengers:[{id:"zombie",CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_48"],HandItems:[{id:"minecraft:wooden_sword",Count:1b},{}]}]} 
execute if score 怪48 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪48 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_49] run scoreboard players add 怪49 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_49] if score 怪49 monster_cool >= 刷怪冷却 monster_cool run summon pig -185 5 -68 {CustomName:"{\"text\":\"变异猪猪\"}",CustomNameVisible:1b,Tags:["monster","monster_id_49"],Passengers:[{id:"skeleton",CustomName:"{\"text\":\"骷髅\"}",CustomNameVisible:1b,Tags:["monster","monster_id_49"],HandItems:[{id:"minecraft:stick",Count:1b},{}]}]} 
execute if score 怪49 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪49 monster_cool 0
execute unless entity @e[tag=monster,tag=monster_id_50] run scoreboard players add 怪50 monster_cool 1 
execute unless entity @e[tag=monster,tag=monster_id_50] if score 怪50 monster_cool >= 刷怪冷却 monster_cool run summon zombie -192 7 -62 {CustomName:"{\"text\":\"僵尸\"}",CustomNameVisible:1b,Tags:["monster","monster_id_50"],HandItems:[{id:"minecraft:stick",Count:1b},{}]} 
execute if score 怪50 monster_cool >= 刷怪冷却 monster_cool run scoreboard players set 怪50 monster_cool 0