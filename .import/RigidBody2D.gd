extends Node2D


# Declare member variables here. Examples:
var setrigid = false
var balldropchoices = [3,-3]
var form


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _integrate_forces(state):
	if Input.is_action_just_pressed("dropball"):
		form = state.get_transform()
		form.origin.x = 512+balldropchoices[randi()%balldropchoices.size()]
		form.origin.y = -100
		state.set_transform(form)
		#position = get_parent().get_parent().get_node(balldropchoices[randi()%balldropchoices.size()]).position
		#print(get_parent().get_parent().get_node(balldropchoices[randi()%balldropchoices.size()]).position)
		print(self.position)
		self.linear_velocity = Vector2.ZERO
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
#func _process(delta):
#	if Input.is_action_just_pressed("ui_down"):
#		self.mode = RigidBody2D.MODE_RIGID
#		self.linear_velocity = Vector2.ZERO
#	if Input.is_action_just_pressed("dropball"):
#		self.mode = RigidBody2D.MODE_STATIC
#		self.position = get_parent().get_parent().get_node(balldropchoices[randi()%balldropchoices.size()]).position
#		print(get_parent().get_parent().get_node(balldropchoices[randi()%balldropchoices.size()]).position)
#		print(self.position)
#		self.linear_velocity = Vector2.ZERO
