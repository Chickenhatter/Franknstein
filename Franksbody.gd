extends CharacterBody2D

var above = true
var moveable = true
var SPEED = 300.0
const JUMP_VELOCITY = -400.0
var arms = false
var torso = false
var head = false
var legs = false
var lever = false


func _process(delta: float) -> void:
	if arms == true:
		if legs == true:
			if head == true:
				if torso == true:
					lever = true


func _physics_process(delta: float) -> void:
	if moveable == true:
		var input_vector = Vector2.ZERO
		if above == true:
			if Input.is_action_pressed("ui_s"):
				if moveable == true:
					input_vector.y += 1
			
			if Input.is_action_pressed("ui_w"):
				if moveable == true:
					input_vector.y -= 1
			
			if Input.is_action_pressed("ui_d"):
				if moveable == true:
					input_vector.x += 1
			if Input.is_action_pressed("ui_a"):
				if moveable == true:
					input_vector.x -= 1
			
			if Input.is_action_pressed("ui_fast"):
				velocity = input_vector *1000
			else:
				velocity = input_vector * 100
		
		
		
		
		
		elif above == false:
			if not is_on_floor():
				velocity += get_gravity() * delta
			if Input.is_action_just_pressed("ui_w") and is_on_floor():
				velocity.y = JUMP_VELOCITY
			if Input.is_action_just_pressed("ui_space") and is_on_floor():
				velocity.y = JUMP_VELOCITY
			var direction := Input.get_axis("ui_a", "ui_d")
			if direction:
				velocity.x = direction * SPEED
			else:
				velocity.x = move_toward(velocity.x, 0, SPEED)
			if Input.is_action_pressed("ui_fast"):
				SPEED = 1000
			else:
				SPEED = 300
	elif moveable == false:
		$Head.play("No Head")
	move_and_slide()
	


func _on_lever_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
			if Input.is_action_pressed("ui_On"):
				if lever == true:
					moveable = false
									


func _on_to_university_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$".".position = Vector2(-30000,0)
		above = false
func _on_to_graveyard_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$".".position = Vector2(30000,0)
		above = true
func _on_un_lab_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$".".position = Vector2(4200,500)
		above = true
func _on_gravelab_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$".".position = Vector2(-1500,-500)
		above = true
		
func _on_a_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		arms = true
func _on_b_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		legs = true
func _on_c_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		torso = true
func _on_d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		head = true


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$".".position = Vector2(20000, 20000)
		moveable = true
		$"../../../The Library/AnimatedSprite2D".play("Text")


func _on_book_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_Pickup"):
			$".".position = Vector2(0,0)
