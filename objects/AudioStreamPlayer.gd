extends AudioStreamPlayer

var is_flushing: bool

func _ready():
	stream = load("res://behind-doors-toilet-flush-196151.mp3")

func _process(_delta):
	pass
	# flush_toilet()

func flush_toilet():
	is_flushing = true
	play()
	is_flushing = false
