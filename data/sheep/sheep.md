# 添加一个羊的流程

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
    `103`|ultimate/lime |减缩
    `201`|ultimate/blue |近战
- 隐藏类
    ID|type|名称
    :--:|:--:|:--:
    `1001`|speical_sheep/volleyball |排球
    `1002`|speical_sheep/football   |足球
