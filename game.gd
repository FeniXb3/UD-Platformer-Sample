extends Node2D

@export var points: int

func add_point():
	points += 1
	$CanvasLayer/MarginContainer/Label.text = str(points)


func _on_item_body_entered(body: Node2D) -> void:
	add_point()
