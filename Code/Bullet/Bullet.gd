extends ScreenWrapper
class_name Bullet


func _process(delta):
	super._process(delta)
	position.x += 200 * delta

