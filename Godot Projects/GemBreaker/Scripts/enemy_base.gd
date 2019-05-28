extends KinematicBody2D

#total movement
var motion = Vector2()

#movement variables
const GRAVITY = 10
var direction = 1
var speed = 100

func _physics_process(delta):
	_movement()
	pass
	
# 
func _movement():
	# Manage Gravity
	motion.y += GRAVITY
	# Check direction
	
	# Give enemies motion based on given speed + direction
	#if direction == 1:
		
	# Apply total motion
	motion = move_and_slide(motion)
	pass