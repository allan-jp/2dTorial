extends Area2D


var can_interact: bool = false
var is_flushing: bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", _on_InteractionArea_body_entered)
	connect("body_exited", _on_InteractionArea_body_exited)	
	$"../AudioStreamPlayer".connect("finished", finish_flush)
	$"../AudioStreamPlayer".stream = load("res://behind-doors-toilet-flush-196151.mp3")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if can_interact and !is_flushing and Input.is_action_just_pressed("interact"):
		flush_terlet()

func _on_InteractionArea_body_entered(body):
	if body_entered:
		can_interact = true
		print('body entered terlet interaction zone')
	
func _on_InteractionArea_body_exited(body):
	if body_exited:
		can_interact = false
		print('body exited terlet interaction zone')
	
func flush_terlet():
	is_flushing = true
	$"../AudioStreamPlayer".play()

func finish_flush():
	print('toilet flushed')
	is_flushing = false
