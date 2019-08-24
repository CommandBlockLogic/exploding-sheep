# 更新日志

* 2019/08/07
	* 选择不同羊羊玩家特点也会变化
		* 黄羊 加速1
		* 黑羊 落地充满能量
		* 橙羊 血量上限+2
		* 红羊 扇子上限+1
		* 蓝羊 不被冰冻
	* BUG修复:冰羊同时丢到两个部落会来回切换
	* 橙羊增加影响范围
* 2019/08/08
	* 特殊羊玩家死亡后自动切换普通羊
	* 部落抢分模式修改
		* 修改成只有一个阶段，一开始是紫色，减少中间方块的数量
		* 最后一个炸掉方块的队伍获得水晶所有权
		* 水晶数量小于一半后有保护罩，外界地方射入的羊会消失
		* 时间到后控制水晶的队伍胜利
	* bugfix:黑羊在玩家死亡后继续传送
	* 部落抢分优化
		* 双方方块小于50会不时从天降紫方块
		* 显示破坏进度
* 2019/08/09
	* bugfix:特殊羊羊可进入游戏
	* 新增
		* 皇冠羊 落地产生皇冠粒子 玩家跳跃提升
		* 彩虹羊 jeb_ 飞行彩色粒子耗能低
	* 山顶跳下后获得奖励
		* 皇冠羊
* 2019/08/10
	* bugfix:足球羊一个玩家可存在多个
	* 足球羊和排球羊显示玩家名字
	* bugfix:排球羊落地效果太蠢
		* 改为沙子粒子
	* 制作人员名单
		* K_bai Him spg 修命令方块
		* xHand RAY5D 修地图
		* 719 修扇子
		* tremble 修动画
* 2019/08/11
	* 添加更多音效
		* 部落抢分水晶变色
		* 彩虹羊落地
		* 皇冠羊落地
* 2019/08/22
	* 地图进入动画，用于宣传片
	* 酷炫开场动画！！！！！
	* bugfix:个人抢水晶砂没有水晶砂
	* bugfix:随机tp出错
	* bugfix:动画可以打人
	* bugfix:重生固定朝向
	* bugfix:盔甲架可脱衣服
	* bugfix:红羊无法加入队伍
	* bugfix:动画疯狂换头
	* bugfix:增加游戏结束提示
	* bugfix:pve自动初始化
	* bugfix:清空其他格子


# TODO List

* PVE模式改至1.14
* 添加更多音效
	* 也许添加背景音乐？考虑一下2b的感受好了
	* 待补充...
* 彩蛋：进球
* 选择游戏模式优化
* bugfix:旁观模式给了鞋





# 游戏开始动画

* 小范围区域 大概32\*32\*32？
* 场景1
	* 一侧草原一侧沙漠中间河 各有小垃圾房子
	* 两个人黄衣服
	* 沙漠侧的打铁，草原侧的砍树
	* 随后二者交换材料
* 场景2
	* 天降圣坛，地面下陷，与世隔绝
	* 圣坛里有很多水晶，同时圣坛中升起发光镐子和斧子
	* 两侧人轮流从中间圣坛拿水晶，砍树和打铁速度变快，水晶数量变少
	* 房子逐渐变大变漂亮，房子主色逐渐改变，草原侧变蓝，沙漠侧变红
* 场景3
	* 两侧人对最后剩下的水晶进行争夺，来回拉扯
	* 沙漠侧用镐子，草原侧用斧子锤人
* 场景4
	* 最后的水晶消失，圣坛中升起小羊大炮和扇子
	* 两侧人手一个，开始丢羊


## 旁白

在还没有圣坛的年代，沙漠中的x和草原上的y曾是互帮互助的邻居。居住在河的两岸，他们交换自己采集的资源。日子虽然清苦，但在互帮互助之下，没有什么困难不能解决。

但是随着圣坛天降，日子开始不太一样了。已经不知道是谁发现，圣坛会产出能让劳作更为轻松的水晶。村民们开始去圣坛中采掘水晶，两个村子的生活也一天天好了起来。

可这天赐的水晶并不是无穷无尽的，所有人都注意到了水晶的减少。大家都习惯了优渥的生活，没有人愿意回到以前那贫苦的时代。于是围绕水晶的争夺当然无法避免。在为圣坛刀剑相向之时，他们惊异的发现圣坛中最后的水晶变成了威力巨大的武器。仇恨已经刻入人心，他们再不复往日的友好，为了圣坛中偶尔出现的些许水晶展开了旷日持久的战斗……

# 宣传视频脚本

* 先是宣传图1帧
* 字：整个故事是这样的...
	* 再来是游戏内动画
* 接着地图介绍 这里想做成一个白幕+字 然后跟着是游戏内的录屏
	* 字：现在，我们被迫加入了争斗。
	* 字：举起你手中的羊羊大炮
		* 手持羊羊大炮发射一只羊
	* 字：挥动手中的芭蕉扇
		* 手持芭蕉扇挥走一只羊
	* 字：探索整个地图
		* 用黑羊探索地图
	* 字：充分锻炼自己的技能
		* 扇子调戏中央大炮
	* 字：击杀洞穴中的怪物
		* 击杀boss的一瞬间
	* 字：与其他玩家争斗
		* 个人死斗录制
	* 字：参与圣坛水晶争夺之战
		* 组队争夺水晶砂录制

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




# done

* 柠羊变成加快能量恢复
* 增加单人死斗和抢分模式
* 更多死亡提示
* 修复空物品栏F得羊毛bug
* 特殊怪伤害
* 得分模式死亡时间修改
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
