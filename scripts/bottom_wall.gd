extends Area2D

var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	
	
func get_bounce_multiplier():
	return Vector2(1, -1)
