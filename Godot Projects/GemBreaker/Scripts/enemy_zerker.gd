extends KinematicBody2D

var velocity = Vector2(-100, 10)

const SPEED = 100
const GRAVITY = 10
const FLOOR = Vector2(0, -1)
# Change this for Left/Right
var direction = 0

func ready():
	add_to_group("enemy")
	set_process(true)


func _process(delta):
	#velocity.x = SPEED * direction
	#velocity.y += GRAVITY
	translate(velocity * delta)