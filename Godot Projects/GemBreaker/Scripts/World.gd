extends Node2D

var player = preload("res://Scenes/kb_player.tscn") # player
var enemy_temp = preload("res://Scenes/enemy_base.tscn") # test enemy
var enemy_zerker = preload("res://Scenes/enemy_zerker.tscn")

func _ready():
	_spawn_player()
	set_process(true)


func _process(delta):
	if $enemySpawn/spwn_zerker/timer_zerker.is_stopped():
		_spawn_enemies()
		$enemySpawn/spwn_zerker/timer_zerker.start()

func _spawn_enemies():
	var spawner = get_node("enemySpawn/spwn_zerker")
	#var enemy = enemy_zerker.instance()
	var enemy = enemy_temp.instance()
	#enemy.set_position(spawner.get_position())
	enemy.set_position($enemyPaths/path_enemy_base.position)
	get_node("enemyContainer").add_child(enemy)
	
func _spawn_player():
	var player1 = player.instance()
	player1.set_position(get_node("playerSpawn/spwn_player").get_position())
	get_node("playerSpawn").add_child(player1)

func _on_Timer_timeout():
	$enemySpawn/spwn_zerker/timer_zerker.stop()