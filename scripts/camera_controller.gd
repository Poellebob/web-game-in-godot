extends Node3D

var car

func _ready():
	car = $".."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.y = car.position.y
	
