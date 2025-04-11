extends Area2D

@export var speed = 4
@export var is_left = false
#Called when the node enters the scene tree. (At the start of the scene)
#Called only once
func _ready():
	pass
#Called every frame. While game is running
func _process(delta):
	if Input.is_action_pressed("Left_Up") and is_left:
		position.y -= speed
	elif Input.is_action_pressed("Left_Down") and is_left:
		position.y += speed
	if Input.is_action_pressed("Right_Up") and not is_left:
		position.y -= speed
	elif Input.is_action_pressed("Right_Down") and not is_left:
		position.y += speed
