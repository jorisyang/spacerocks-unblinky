extends Node
class_name Main

const UFO = preload("res://UFO/UFO.tscn")
@onready var ufo_timer = $UFOTimer


func _ready():
	ufo_timer.timeout.connect(OnSpawnUFO)


func OnSpawnUFO():
	var ufo = UFO.instantiate()
	add_child(ufo)
