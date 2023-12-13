extends Node2D
var save_score = FileAccess.open("res://savescore.save", FileAccess.READ)
func _ready():
	get_node("score_label").text = 'SCORE: ' + save_score.get_line()

func _on_start_pressed() :
	get_tree().change_scene_to_file('res://main.tscn')

func _on_quit_1_pressed():
	get_tree().quit()
