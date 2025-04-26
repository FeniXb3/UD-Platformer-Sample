extends Node2D

@export var points: int
func _ready() -> void:
	SignalBus.coin_picked.connect(_on_coin_picked)

func _on_coin_picked() -> void:
	points += 1
	$CanvasLayer/MarginContainer/Label.text = str(points)
