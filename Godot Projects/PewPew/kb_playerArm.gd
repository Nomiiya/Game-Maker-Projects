extends KinematicBody2D

# === BULLET ===
const BULLETDELAY = 2
var mousePos = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	_targetMouse()
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and $bulletdelay.is_stopped():
		_shoot()
		$bulletdelay.start()
	pass

func _on_Timer_timeout():
	$bulletdelay.stop()

sync func _shoot():
	if $bulletdelay.is_stopped():
		print("PEW PEW PEW")
		var shot = load("res://col_area_bullet.tscn").instance()
		shot.position = get_global_position()
		get_parent().add_child(shot)
	pass

func _targetMouse():
	mousePos = get_global_mouse_position()

	# Rotate the hand to the mouse pos
	look_at(mousePos );
	pass