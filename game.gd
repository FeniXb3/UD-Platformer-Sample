extends Node2D

@export var points: int

func _ready() -> void:
	SignalBus.coin_picked.connect(add_point)
	
func add_point():
	points += 1
	$CanvasLayer/MarginContainer/Label.text = str(points)
	if points >= 2:
		$CanvasLayer/MarginContainer/Label2.show()
