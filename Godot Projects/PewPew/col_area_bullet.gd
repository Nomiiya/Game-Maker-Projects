extends Area2D

const speed = 1000

var target = Vector2()
var velocity = Vector2()

func _ready():
	target = get_global_mouse_position()
	velocity = -(position - target).normalized()
	pass

func _fixed_process(delta):
	position += velocity
