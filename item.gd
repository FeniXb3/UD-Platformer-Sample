extends Area2D
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var gpu_particles_2d: GPUParticles2D = $GPUParticles2D


func _on_body_entered(body: Node2D) -> void:
	gpu_particles_2d.emitting = true
	sprite_2d.hide()
	collision_mask = 0
