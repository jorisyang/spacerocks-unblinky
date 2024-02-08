extends ScreenWrapper
class_name Ship


func _process(delta):
	# Navigation.
	if Input.is_action_pressed("rotate_cw"):
		rotation_degrees -= 360 * delta
	if Input.is_action_pressed("rotate_ccw"):
		rotation_degrees += 360 * delta
	
	# Move Forward.
	if Input.is_action_pressed("thrust"):
		print("thrust")
	
	# Fire.
	if Input.is_action_just_pressed("fire"):
		print("Fire!")
	
	# Quit.
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()



