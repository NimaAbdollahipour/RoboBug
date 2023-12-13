extends Node2D

var timer = 0
var player_health = 25
var player_energy = 5
var score = 0

var count_down = 10
var next_off = 30
signal light_reminder(l)
# Called when the node enters the scene tree for the first time.
func _ready():
	DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)

func regular():
	if next_off>0:
		next_off-=1
	if next_off==0:
		$world.visible=false
		count_down-=1
		if count_down<=0:
			$world.visible=true
			next_off=randi_range(30,50)
			count_down=5
	if next_off<=5:
		emit_signal("light_reminder","LIGHTS OFF IN: " + str(next_off))
	else:
		emit_signal("light_reminder",'')
		
	pass
		
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed('pause'):
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_MAXIMIZED)
	timer += delta
	if timer>0.3:
		timer=0
		regular()


func _on_player_body_energy_change(e):
	player_energy = e


func _on_player_body_health_change(h):
	player_health = h
