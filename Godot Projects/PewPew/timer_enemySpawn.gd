extends Timer

func _process(delta):
	pass

func _on_Timer_timeout():
	$timer.enemySpawn.stop()
