extends AnimatableBody2D
class_name Player2

const SPEED = 300.0

func _ready():
	sync_to_physics = false

func _physics_process(delta):
	if Input.is_action_pressed("player_2_down"):
		move_and_collide(Vector2(0, SPEED * delta))
	if Input.is_action_pressed("player_2_up"):
		move_and_collide(Vector2(0, -SPEED * delta))
