extends Node2D

var player1Score
var player2Score

signal player_1_update_score(score)
signal player_2_update_score(score)
# Called when the node enters the scene tree for the first time.
func _ready():
	player1Score = 0
	player2Score = 0

func _on_score_zone_2_body_entered(body):
	player1Score += 1
	print_debug(player1Score)
	emit_signal("player_1_update_score", player1Score)
	if body is Ball:
		body.transform.origin = body.spawn_position
		body.direction.x = pow(-1.0, randi() % 2)
		body.direction.y = 0.25

func _on_score_zone_1_body_entered(body):
	player2Score += 1
	print_debug(player2Score)
	emit_signal("player_2_update_score", player2Score)
	if body is Ball:
		body.transform.origin = body.spawn_position
		body.direction.x = pow(-1.0, randi() % 2)
		body.direction.y = 0.25
