extends Sprite2D

var pos: Vector2 = Vector2.ZERO
const speed: int = 100
var test_scale: int = 1
# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos
	position.y = 100
	test_scale = 2
	$"..".testFunction()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += delta * speed
