extends RigidBody2D
class_name Ball

var direction = Vector2()
var speed = 100.0
@onready var spawn_position = position

func _ready():
	direction.x = pow(-1.0, randi() % 2)
	direction.y = 0.25

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = speed * delta * direction
	var collision_info = move_and_collide(velocity)
	if collision_info:
		if collision_info != null:
			direction = direction.bounce(collision_info.get_normal())

