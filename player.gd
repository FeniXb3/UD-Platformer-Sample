extends CharacterBody2D


@export var SPEED = 500.0
@export var JUMP_VELOCITY = -700.0
@export var max_jumps_amount = 2
@export var current_jumps_amount = 0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		current_jumps_amount = 0

	 #Handle jump.
	if Input.is_action_just_pressed("jump") and current_jumps_amount < max_jumps_amount: #and is_on_floor():
		velocity.y = JUMP_VELOCITY
		current_jumps_amount += 1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("move_left", "move_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
