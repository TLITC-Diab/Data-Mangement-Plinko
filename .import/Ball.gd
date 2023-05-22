extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _unhandled_input(event):
	if event is InputEventKey:
		if event.is_action_pressed("dropball"):
			set_transform(Transform2D(0,350))
			set_linear_velocity(Vector2(0,0))
			set_angular_velocity(0.0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
