extends Label

var basetext = "Player1: "

func _on_level_scene_player_1_update_score(score):
	text = basetext + str(score)
