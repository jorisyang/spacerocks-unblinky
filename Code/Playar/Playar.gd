extends Control
class_name Playar

const SHIP = preload("res://Ship/Ship.tscn")

@onready var score_ui = $VBox/ScoreUI

var score: int = 0
var lives: int = 3


func _process(delta):
	if Input.is_action_just_pressed("launch_ship"):
		if lives > 0:
			var ship = SHIP.instantiate()
			ship.playar = self
			ship.position = get_viewport().size / 2
			get_parent().add_child(ship)


func UpdateScore(delta_score: int):
	score += delta_score
	score_ui.text = str(score)
