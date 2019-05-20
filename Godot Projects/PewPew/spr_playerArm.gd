extends Sprite

var mousePos = Vector2()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_targetMouse()
	pass

func _targetMouse():
	mousePos = get_global_mouse_position()
	# Rotate the hand to the mouse pos
	look_at(mousePos);
	pass