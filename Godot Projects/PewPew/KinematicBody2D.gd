extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0, -1)
const GRAVITY = 20
const SPEED = 200
const JUMP_HEIGHT = -500


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	# ====== Character Movement ========
	_movement()
	
	pass # allows errors to not happen, " Kind of like return Null;"
	

func _movement():
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		if Input.is_action_pressed("ui_up"):
			motion.x = SPEED
			if is_on_floor():
				if motion.y < JUMP_HEIGHT:
					motion.y = JUMP_HEIGHT
		else:
			motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		if Input.is_action_pressed("ui_up"):
			motion.x = -SPEED
			if is_on_floor():
				if motion.y < JUMP_HEIGHT:
					motion.y = JUMP_HEIGHT
		else:
			motion.x = -SPEED
	elif Input.is_action_pressed("ui_up"):
		if is_on_floor():
			motion.y = JUMP_HEIGHT
	else:
		motion.x = 0
		
	
	motion = move_and_slide(motion, UP)
	
	pass