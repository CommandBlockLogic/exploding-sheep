# 添加一个羊的流程

* 首先定义羊的实体，位于`sheep:launch/type/foo`
	* 必要标签是`sheep_sheep`、`sheep_new`和`sheep_type_foo`
	* `sheep_attr_no_damage`有这个标签的不造成伤害，不叠加大招，不破坏方块
	* `sheep_attr_no_explode`有这个标签的落地不触发爆炸事件，可用`s_blow_time=1..`来判定落地
	* `sheep_attr_no_kill`有这个标签的落地触发爆炸事件后，转化为`sheep_attr_no_explode`
	* 同函数内给羊赋予特定id `s_sheep_type`
* 在`sheep:launch/main`中添加羊的发射行为和其他属性
	* 其他属性包括：
		* 发射者id计分板 `s_thrower_id`
		* 发射者队伍tag `sheep_team_red`
* 在`sheep:tick`中添加羊的发射条件
	* 见其他羊
* 在`sheep:change_color`中添加新的颜色转换条目（照抄）
* 在`sheep:item/wools`中添加新条目（照抄）
* 在`sheep:blow/main`中定义爆炸行为
	* 普通爆炸就是生成creeper
	* 特殊效果可以自己定义
* 在`minecraft:player_death/message/kill_by_XXX`和`minecraft:player_death/message/push_by_XXX`中添加致死信息

## sheep:blow/main.mcfunction

  羊的引爆事件

- **\#power** 设置爆炸大小
- **\#boom** 设置爆炸
- **\#ice / \#heal / \#teleport** 设置特殊效果
- **tags** 涉及的标签
    - `sheep_type_foo` 羊的类型
    - `sheep_team_foo` 羊的队伍
    - `sheep_attr_no_damage` 这种羊不造成伤害
- **scoreboards** 涉及的计分板
    - `s_blow_power` 爆炸力度
----
## sheep:item/wools.mcfunction

  物品栏中的羊毛

- **scoreboards** 涉及的计分板
    - `s_class` 物品的类型 (9号物品栏显示)，继承`wool_type`
    - `s_launch_type` 发射的类型 (副手显示)，继承`wool_type`
- **item_interfaces** 涉及的物品接口
    - `item_num` 3 : 9号物品栏显示 / 4 : 物品栏显示
    - `wool_type` 羊的类型
----
## sheep:launch/wools.mcfunction

  羊的发射事件

- **#advancement** 进度
- **#summon sheep** 召唤羊
    - `sheep:launch/type/foo` 调用羊的生成命令

### sheep:lauch/type/foo.mcfunction
- **tags** 涉及的标签
    - `sheep_sheep` 是只羊
    - `sheep_type_foo` 羊的类型
    - `sheep_new` 是只新羊
- **scoreboards** 涉及的计分板
    - `s_sheep_type` 羊的类型，与`wool_type`协同
----
## sheep:tick
  羊的效果实现
- **\#sub / \#sheep effect** 各效果的tick函数调用
    - **sheep\sheep_effect** 效果
    - **sheep\ultimate** 大招
----
## 附 - 目前羊的ID列表
- 普通类

ID|type|名称
:--:|:--:|:--:
`1`|normal        |普通
`2`|teleport      |传送
`3`|fast          |急爆
`4`|air           |失重
`5`|ice           |冰冻
`6`|absorption    |吸收
- 技能类

ID|type|名称
:--:|:--:|:--:
`101`|ultimate/gray |连射
`102`|ultimate/purple |近战
`201`|ultimate/blue |羊羊雨
`202`|ultimate/lime |增加能量
- 隐藏类

ID|type|名称
:--:|:--:|:--:
`1001`|speical_sheep/volleyball |排球
`1002`|speical_sheep/football   |足球
