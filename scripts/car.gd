extends VehicleBody3D

@export var MAX_STEER = 0.4
@export var ENGINE_POWER = 200

var Camera_Controller: Node3D

func _ready():
	Camera_Controller = $"Camera Controller"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	Camera_Controller.position = lerp(Camera_Controller.position, position, 0.1)

func _physics_process(delta):
	steering = move_toward(steering, Input.get_axis("Right", "Left") * MAX_STEER, delta * 10)
	engine_force = Input.get_axis("backword", "forword") * ENGINE_POWER
	Camera_Controller.position = lerp(Camera_Controller.position, position, 0.1)
	Camera_Controller.transform.basis = lerp(Camera_Controller.transform.basis, transform.basis, 0.1)
