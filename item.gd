extends Area2D
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var gpu_particles_2d: GPUParticles2D = $GPUParticles2D


func _on_body_entered(body: Node2D) -> void:
	sprite_2d.hide()
	gpu_particles_2d.emitting = true

func _on_gpu_particles_2d_finished() -> void:
	queue_free()
