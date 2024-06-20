extends Sprite2D

# Global Variables
var pos: Vector2 = Vector2.ZERO
var test_scale: int = 1
var test_rotation = 0
const speed: int = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pos = Vector2(300, 200)
	position = pos
	
	test_scale = 2
	scale = Vector2(test_scale, test_scale)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos.x += speed * delta
	position = pos
	#test_scale += 1
	#scale = Vector2(test_scale, test_scale)
	
