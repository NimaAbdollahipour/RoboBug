extends Node2D

var player_x = 0
var player_y = 0
var number_of_enemies = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_player_body_player_position(x, y):
	player_x = x
	player_y = y
