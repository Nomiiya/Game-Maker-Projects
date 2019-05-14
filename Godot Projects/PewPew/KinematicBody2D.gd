extends KinematicBody2D

var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	# ====== Character Movement ========
	_movement()
	
	pass # allows errors to not happen, " Kind of like return Null;"
	


func _movement():
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	elif Input.is_action_pressed("ui_up"):
		motion.y = -100
	elif Input.is_action_pressed("ui_down"):
		motion.y = 100
	else:
		motion.x = 0
		motion.y += 10
	
	move_and_slide(motion)
	
	pass