extends Area2D

onready var notifNode = get_node("notif_enemy1")

export var velocity = Vector2()

func _ready():
	add_to_group("enemy")
	set_process(true)
	pass 

func _process(delta):
	translate(velocity * delta)
	#print(get_colliding_bodies())
	if not notifNode.is_on_screen():
		queue_free()
	pass