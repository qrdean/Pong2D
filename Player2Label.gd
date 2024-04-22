extends Label

var basetext = "Player2: "

func _on_level_scene_player_2_update_score(score):
	text = basetext + str(score)

