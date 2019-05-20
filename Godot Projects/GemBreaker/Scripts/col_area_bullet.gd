extends Area2D

var velocity = Vector2()
const SPEED = 1000
onready var notifNode = get_node("notif_bullet")

func _ready():
	connect("area_entered", self, "_on_area_enter")
	set_process(true)

func start_at(dir, pos):
	set_rotation(dir)
	set_position(pos)
	velocity = Vector2(SPEED, 0).rotated(dir)

func _process(delta):
	set_position(get_position() + velocity * delta)
	if not notifNode.is_on_screen():
		queue_free()
	
func _on_area_enter(other):
	if(other.is_in_group("enemy")):
		print("colliding")