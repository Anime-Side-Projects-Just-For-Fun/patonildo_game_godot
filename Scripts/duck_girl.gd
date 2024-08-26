extends CharacterBody2D

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var speed = 300

const JUMP_VELOCITY = -400

func _process(delta: float) -> void:
	
	if !is_on_floor():
		velocity.y += gravity * delta
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$Sprite2D.flip_h = false
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$Sprite2D.flip_h = true
	else:
		velocity.x = 0
		
	if Input.is_physical_key_pressed(KEY_P):
		print('Game paused!')

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	move_and_slide()
	
