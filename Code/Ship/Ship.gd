extends ScreenWrapper
class_name Ship

const BULLET = preload("res://Bullet/Bullet.tscn")

var playar: Playar
var thrust_multiplier: float = 15.0

func _process(delta):
	super._process(delta)
	
	# Navigation.
	if Input.is_action_pressed("rotate_cw"):
		rotation_degrees -= 360 * delta
	if Input.is_action_pressed("rotate_ccw"):
		rotation_degrees += 360 * delta
	
	# Move Forward.
	if Input.is_action_pressed("thrust"):
		var direction = Vector2(cos(-rotation), sin(rotation))
		velocity += direction * thrust_multiplier
		#print("thrust: ", velocity)
	
	# Update the position
	position += velocity * delta
	
	# Fire.
	if Input.is_action_just_pressed("fire"):
		var bullet = BULLET.instantiate()
		bullet.ship = self
		bullet.position = position
		bullet.rotation = rotation
		get_parent().add_child(bullet)
		#print("Fire!")
	
	# Quit.
	if Input.is_action_just_pressed("quit"):
		get_tree().quit()


func Destroy():
	queue_free()


