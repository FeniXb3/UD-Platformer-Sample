extends Node2D
@onready var game_over_label: Label = %GameOverLabel
@onready var win_label: Label = %WinLabel
var points = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_killzone_body_entered(body: Node2D) -> void:
	game_over_label.show()


func _on_item_2_body_entered(body: Node2D) -> void:
	points = points + 1
	if points == 2:
		win_label.show()
