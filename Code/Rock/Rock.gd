extends ScreenWrapper
class_name Rock

@onready var sprites = $Sprites

#@export var velocity: Vector2 = Vector2(300, -150) # per / sec.
var thrust_multiplier = 200

func _ready():
	velocity = Vector2(randf_range(-1, 1), randf_range(-1, 1))
	velocity *= thrust_multiplier
	sprites.frame = randi_range(0, 4)

func _process(delta):
	super._process(delta)
	position += velocity * delta
