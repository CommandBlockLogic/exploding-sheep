# test!2

# Sheep type

* white-normal
	* Radius:2
	* Motion:2
	* Cost:2
	* No speical effects
* yellow-small
	* Radius:1
	* Motion:2
	* Cost:1
	* No speical effects
* gray-heavy
	* Radius:2
	* Motion:2.5
	* Cost:3
	* Too heavy to be blown away
* lime-light
	* Radius:3
	* Motion:2.5
	* Cost:3
	* Dead when blown
* blue-fast
	* Radius:2
	* Motion:2
	* Cost:4
	* No gravity, ignited after touch the player
* red-air
	* Radius:2
	* Motion:2
	* Cost:4
	* Instantly blow up in 2 second(?)
* orange-ground
	* Radius:2
	* Motion:2
	* Cost:4
	* Instantly blow up when touch the ground
* light_blue-web
	* Radius:N.A.
	* Motion:2
	* Cost:5
	* Fill an area with web of 5*5*1, and last for 1 second
* black-big
	* Radius:4
	* Motion:2.5
	* Cost:6
	* No speical effects
* pink-heal
	* Radius:N.A.
	* Motion:1
	* Cost:7
	* Summon a potion which can heal 6 hearts when touched the ground

# Scoreboard

* keep_item
	* When set to 1, set wool and armor
	* When set to 2, set all

# Tags

## Player

* sheep_own_heavy
* sheep_own_fast
* sheep_own_air 
* sheep_own_web
* sheep_own_heal

## Sheep

* sheep_sheep
	* all sheep's tag.
* sheep_type_normal
* sheep_type_heavy
* sheep_type_fast
* sheep_type_air
* sheep_type_web
* sheep_type_heal
* sheep_effect_big
	* Sheeps with bigger explosion after cup.
* sheep_team_red
* sheep_team_blue

## Creeper

* sheep_blower

## Villiger

* game
* game_target
* game_target_red
* game_target_blue

## Area effect cloud

* game
* game_target
* game_target_cup

# Fake player

* system
	* game_phase
		* 0: lobby
		* 1: ready to start
		* 2: in game
			* 四分之一血的时候首领开始自己射羊
			* 3: in game cup
				* 一半血的时候中间生成一个雕像，谁血少就是什么颜色 守下来或者攻下来爆炸范围都改到3
			* 4: in game after cup
		* 5: ending game
	* game_hp_red
	* game_hp_blue
	* game_hp_cup
	* game_cup_phase
		* 1-5: red
		* 6-10: blue
	* game_ready_timer
	* game_cup_timer
	* game_after_timer
	* game_end_timer
	* game_player_count_red
	* game_player_count_blue
	* game_hp_half_red
	* game_hp_half_blue
	* game_hp_cup_max

# Update

* 盔甲皮 铁 钻 爆炸抗性1-4
* 弹药上限
* 复活时间