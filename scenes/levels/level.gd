extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$Logo.rotation_degrees = 90
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Logo.rotation_degrees += 2
	
	if $Logo.position.x > 1000:
		$Logo.position.x = 0
	pass
