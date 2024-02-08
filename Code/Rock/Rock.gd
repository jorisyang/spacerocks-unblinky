extends ScreenWrapper
class_name Rock

@export var velocity: Vector2 = Vector2(300, -150) # per / sec.



func _process(delta):
	super._process(delta)
	position += velocity * delta
