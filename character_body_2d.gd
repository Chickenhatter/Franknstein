extends CharacterBody2D

var moveable = true
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO
	if moveable == true:
		if Input.is_action_pressed("ui_s"):
			input_vector.y += 1
			$AnimatedSprite2D.play("Down")
			
		if Input.is_action_pressed("ui_w"):
			input_vector.y -= 1
			$AnimatedSprite2D.play("ui_up")
			
		if Input.is_action_pressed("ui_d"):
			input_vector.x += 1
			$AnimatedSprite2D.play("Right")
		
		if Input.is_action_pressed("ui_a"):
			input_vector.x -= 1
			$AnimatedSprite2D.play("Left")
		
		if Input.is_action_pressed("ui_m"):
			velocity = input_vector *1000
		else:
			velocity = input_vector * 100
	move_and_slide()
	if Input.is_action_pressed("ui_s"):
		pass
	
