extends KinematicBody2D
var motion = Vector2()
const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -500

# === BULLET ===
const BULLETDELAY = 2
export (PackedScene) var bullet

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	# ====== Character Movement ========
	_movement()

	if Input.is_mouse_button_pressed(BUTTON_LEFT) and $bulletdelay.is_stopped():
		_shoot()
		$bulletdelay.start()
	
func _on_Timer_timeout():
	$bulletdelay.stop()

sync func _shoot():
	if $bulletdelay.is_stopped():
		var shot = bullet.instance()
		shot.start_at($spr_playerArm.get_rotation(), get_position())
		get_node("bulletContainer").add_child(shot)


func _movement():
	motion.y += GRAVITY
	if Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_right") and is_on_floor():
		motion.x = SPEED
		motion.y = JUMP_HEIGHT
	elif Input.is_action_pressed("ui_up") and Input.is_action_pressed("ui_left") and is_on_floor():
		motion.x = -SPEED
		motion.y = JUMP_HEIGHT
	elif Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	elif Input.is_action_pressed("ui_up") and is_on_floor():
		motion.y = JUMP_HEIGHT
	else:
		motion.x = 0
	
	motion = move_and_slide(motion, UP)
	
