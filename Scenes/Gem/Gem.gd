extends Area2D

# How fast the gem falls (pixels per second)
const SPEED: float = 100.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass  # nothing special to do on spawn

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# Move the gem downwards
	position.y += SPEED * delta

	# If it falls below the bottom of the viewport, free it
	if position.y > get_viewport_rect().end.y:
		print("Gem falls off")
		set_process(false)
		queue_free()
