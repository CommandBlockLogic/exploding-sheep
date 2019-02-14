### 初始化计分板


# 提示
tellraw @a [{"text":"[系统] ","color":"red"},{"text":"PVE计分板初始化中...","color":"red"}]

# 系统
scoreboard objectives remove pve_system
scoreboard objectives add pve_system dummy
bossbar remove boss_cool
bossbar add boss_cool [{"text":"boss_cool"}]

# 怪物
scoreboard objectives remove monster_cool 
scoreboard objectives add monster_cool dummy

### Boss1: Mage
# 删除
scoreboard objectives remove boss_1_health
scoreboard objectives remove boss_1_int
scoreboard objectives remove boss_1_float
scoreboard objectives remove boss_1_max
scoreboard objectives remove boss_1_cool1
scoreboard objectives remove boss_1_cool2
scoreboard objectives remove boss_1_cool3
scoreboard objectives remove boss_4_system


bossbar remove boss1
# 添加
scoreboard objectives add boss_1_health dummy
scoreboard objectives add boss_1_int dummy
scoreboard objectives add boss_1_float dummy
scoreboard objectives add boss_1_max dummy
scoreboard objectives add boss_1_cool1 dummy
scoreboard objectives add boss_1_cool2 dummy
scoreboard objectives add boss_1_cool3 dummy
scoreboard objectives add boss_4_system dummy
bossbar add boss1 [{"text":"boss1"}]


### Boss2: Summoner
# 删除
scoreboard objectives remove boss_2_health
scoreboard objectives remove boss_2_int
scoreboard objectives remove boss_2_float
scoreboard objectives remove boss_2_max
scoreboard objectives remove boss_2_cool1
scoreboard objectives remove boss_2_cool2
scoreboard objectives remove boss_2_cool3
scoreboard objectives remove boss_2_pass
bossbar remove boss2
# 添加
scoreboard objectives add boss_2_health dummy
scoreboard objectives add boss_2_int dummy
scoreboard objectives add boss_2_float dummy
scoreboard objectives add boss_2_max dummy
scoreboard objectives add boss_2_cool1 dummy
scoreboard objectives add boss_2_cool2 dummy
scoreboard objectives add boss_2_cool3 dummy
scoreboard objectives add boss_2_pass dummy
bossbar add boss2 [{"text":"boss2"}]


# Boss3: Chemist
# 删除
scoreboard objectives remove boss_3_health
scoreboard objectives remove boss_3_int
scoreboard objectives remove boss_3_float
scoreboard objectives remove boss_3_max
scoreboard objectives remove boss_3_cool1
scoreboard objectives remove boss_3_cool2
scoreboard objectives remove boss_3_cool3
bossbar remove boss3
# 添加
scoreboard objectives add boss_3_health dummy
scoreboard objectives add boss_3_int dummy
scoreboard objectives add boss_3_float dummy
scoreboard objectives add boss_3_max dummy
scoreboard objectives add boss_3_cool1 dummy
scoreboard objectives add boss_3_cool2 dummy
scoreboard objectives add boss_3_cool3 dummy
bossbar add boss3 [{"text":"boss3"}]

# Boss4: 羊羊之神
# 删除
scoreboard objectives remove boss_4_health
scoreboard objectives remove boss_4_int
scoreboard objectives remove boss_4_float
scoreboard objectives remove boss_4_max
scoreboard objectives remove boss_4_cool1
scoreboard objectives remove boss_4_cool2
scoreboard objectives remove boss_4_cool3
bossbar remove boss4
# 添加
scoreboard objectives add boss_4_health dummy
scoreboard objectives add boss_4_int dummy
scoreboard objectives add boss_4_float dummy
scoreboard objectives add boss_4_max dummy
scoreboard objectives add boss_4_cool1 dummy
scoreboard objectives add boss_4_cool2 dummy
scoreboard objectives add boss_4_cool3 dummy
bossbar add boss4 [{"text":"boss4"}]


# 提示
tellraw @a [{"text":"[系统] ","color":"green"},{"text":"PVE计分板初始化完成!","color":"green"}]