# 注意！

这个仓库只是用来看的！不要对这个仓库进行修改！

# Class

* 1
	* normal
* 2
	* ender
	* teleport player to the landing area
* 3
	* stright
	* no gravity
* 4
	* quick
	* explode instantly when touch the ground
* 5
	* ice
	* slow the enemies in the area
* 6
	* heal
	* heal the allies in the area
* 101
	* shoot a normal sheep per 10 tick
	* 10 seconds
* 102
	* add three rotating sheeps around the player
	* harm enemies that touched those sheep
	* add 4 hearts absorbtion
	* 10 seconds
* 103
	* shoot a tracking sheep per 20 tick
	* tracking the target player nearby
	* 10 seconds
* 201
	* sheep rain
	* summon sheeps from above
	* altitude limit: 10 to 30
	* 10 seconds radius: 4


# Game Mode

* 0
	* free mode
	* no score and no end
* 1
	* death match
	* 10 death
* 2
	* get score
	* 5mins, higher score
* 3
	* clear all powder


# todo list

* 被治愈被冰冻提示
* 增加打怪成就
* 增加隐藏抢球模式
* 餀 餁 餂
	* \u9900 \u9901 \u9902
* 分辨被魔法杀死
* 更多死亡提示
* 修复空物品栏F得羊毛bug
* 增加单人死斗和抢分模式

# 流程

* 组队死斗
	* pre/main
		* 激活pre/tick
	* pre/tick时间到后激活start
		* 激活tick
			* 判断输赢
			* red_win blue_win draw
				* 激活../../end/main
					* 激活/free/main
* 组队抢分
	* pre/main
		* 激活pre/tick
		* 时间到激活red/main
			* 时间到激活mid/main
				* 时间到激活blue/main
					* 时间到激活death_match的结束





## done

* 积分模式按时间看分数
* 自家柱子加速能量回复
* 自由模式加返回大厅道具
* battle模式改成有塔会自动回复 没塔不会回复 没有硬化一说
	* 四分之一一个阶段 可以改材质
* battle模式加bossbar
* battle模式水晶破损提示
* 冰冻队伍错误
* 冰冻对生物效果
* 失重羊颜色
* 削弱治愈羊
  * 加大招和充能
	* 羊的种类和颜色
	* 期间无法发射其他羊和使用扇子
	* Q键丢大炮 开始3s的羊颜色随机变化 结束后清空扇子 修改羊毛颜色 此时右键大炮触发效果
	* 持续射羊 间隔10tick 持续10s
	* 环绕羊羊 身边环绕三羊 碰到掉血 自身增加护盾
	* 炮台羊羊 丢到地上射附近的人
	* 治愈羊羊 丢到地上持续为附近玩家回血 杀死停止效果 30血
* 进入游戏后柱子慢点生成
* 重羊换成黑羊
* 复活时间
	* 随本队玩家数变化
	* 复活提示
* 完全加载地图后再开始游戏
* 结束游戏时提前生成新柱子
* 增加提示内容
	* 物品提示
	* 切类型提示
	* 进入游戏提示
	* 游戏玩法提示
* 修复加入队伍bug
* 造成伤害加终极能量
* 修改冰冻到减速致盲
* 修改粉羊
* 死亡信息
* 炸方块模式
	* 中间水坑填掉变成沙堆
	* 先蓝队进攻打掉沙堆得分
	* 再红队进攻得分
	* 最后看分数高低
* 地图修改 少细节多视野
* 加入可爱提示
	* 按F切羊
	* 终极技能充能百分比
	* 被紫羊杀死
	* 踩石块进入游戏
* 禁用原版合成和成就
* 大厅增加选择游戏模式部分
* 加强蓝羊
* 加强冰羊
* 扇子能吹怪物
* 清除抢分模式掉落沙
* 抢分模式根据玩家人数改变时间
* 下线的超级羊删除
* 柠羊追怪
* 洞穴大厅加pve
* 特殊怪伤害
* 得分模式死亡时间修改