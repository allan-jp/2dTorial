extends Node2D


var test_array: Array[String] = ["Testes", "Test_01", "Stuff"]

# Called when the node enters the scene tree for the first time.
func _ready():
	print('level node is ready')
	#get_node("Logo").rotation_degrees = 90
	$Logo.rotation_degrees = 90
	
	for i in test_array:
		print(i)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Logo.rotation_degrees += 60 * delta
	
	if $Logo.position.x > 1000:
		print('position exceeds 1000')
		$Logo.pos.x = 0
		
	print(Input.is_action_pressed("left"))
	
