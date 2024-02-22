extends Area2D
class_name UFO

@onready var timer: Timer = $Timer

var speed: float = 80.0 # px / sec.

var x_direction: int
var y_direction: int


func _ready():
	timer.timeout.connect(OnTimedOut)
	
	# Which way on the X axis?
	if randi() % 2:
		x_direction = -1
		position.x = get_viewport().size.x
	else:
		x_direction = 1
		position.x = 0
	
	position.y = randi_range(0, get_viewport().size.y)


func _process(delta):
	position.x += speed * x_direction * delta
	position.y += speed * y_direction * delta


func OnTimedOut():
	if y_direction != 0:
		y_direction = 0
	else:
		y_direction = randi_range(-1, 1)
