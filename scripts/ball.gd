extends Area2D

var velocity # Vector2
var screen_size

# Called when the node enters the scene tree for the first time
func _ready():
		screen_size = get_viewport_rect().size
		velocity = Vector2(5, 5)
	
	
func _process(delta):
	position += velocity
	

func reset_position():
	position = screen_size / 2
	

# when another area is colliding with this ball
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("BouncyGroup"):
		var multiplier = area.get_bounce_multiplier()
		velocity.x = velocity.x * multiplier.x
		velocity.y = velocity.y * multiplier.y
