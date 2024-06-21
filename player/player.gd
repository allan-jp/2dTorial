extends CharacterBody2D

func _ready():
	pass
	
func _process(delta):
	# movement input
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	# laser blastin input
	if Input.is_action_pressed("primary action"):
		print('pew pew pew!')

	# grenade toss input
	if Input.is_action_pressed("secondary action"):
		print('shootin a grenade!')
