extends CharacterBody2D

var can_laser: bool = true
var can_grenade: bool = true

func _process(_delta):
	
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 500
	move_and_slide()
	
	# laser shooting input
	
	if Input.is_action_pressed("primary action") and can_laser:
		can_laser = false
		print("pewpew")
		$ShootTimer.start()
		
		
	if Input.is_action_pressed("secondary action") and can_grenade:
		can_grenade = false
		print("bangbang")
		$GrenadeReloadTimer.start()
	pass


func _on_timer_timeout():
	can_laser = true
	pass # Replace with function body.


func _on_timer_2_timeout():
	can_grenade = true
	pass # Replace with function body.
