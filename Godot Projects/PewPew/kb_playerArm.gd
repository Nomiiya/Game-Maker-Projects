extends KinematicBody2D

var mousePos = Vector2();

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	mousePos = get_global_mouse_position();

	# Rotate the hand to the mouse pos
	look_at(mousePos );
	pass
