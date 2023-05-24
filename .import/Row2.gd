extends Node2D


# Declare member variables here. Examples:
# var a = 2
var pinleftorright = [5,-5]


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#ignore UNUSED_ARGUMENT
func _process(delta):
	if Input.is_action_just_pressed("dropball"):
		self.position.x = pinleftorright[randi()%pinleftorright.size()]
		
