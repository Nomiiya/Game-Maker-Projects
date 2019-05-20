extends Node2D

var player = preload("res://player.tscn") # player
var enemy1 = preload("res://area_enemy1.tscn") # test enemy

func _ready():
	_spawn_player()
	set_process(true)
	pass # Replace with function body.

func _process(delta):
	if $enemySpawners/spwn_flyer1/timer_flyer1.is_stopped():
		_spawn_enemies()
		$enemySpawners/spwn_flyer1/timer_flyer1.start()
	pass

func _spawn_enemies():
	var spawner = get_node("enemySpawners/spwn_flyer1")
	var enemy = enemy1.instance()
	enemy.set_position(spawner.get_position())
	get_node("enemyContainer").add_child(enemy)
	pass
	
func _spawn_player():
	var player1 = player.instance()
	player1.set_position(get_node("playerSpawn/spwn_player").get_position())
	get_node("playerSpawn").add_child(player1)
	pass

func _on_Timer_timeout():
	$enemySpawners/spwn_flyer1/timer_flyer1.stop()
	pass