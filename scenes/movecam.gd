extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input_dir = Input.get_vector("strifeLeft", "strifeRight", "forword", "backword")
	var input_look_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	var lookdir = (-Vector3(input_look_dir.x, input_look_dir.y, 0))

	rotation_degrees += Vector3(lookdir.y, lookdir.x, 0) * delta * 30
	position += direction * delta * 10
	