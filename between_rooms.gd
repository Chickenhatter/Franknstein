extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _reay() -> void:
	$Path2D/PathFollow2D.moving = true
	$Path2D/PathFollow2D.move_speed =1.0
	$Path2D2/PathFollow2D.moving = true
	$Path2D2/PathFollow2D.move_speed =1.0
	$Path2D3/PathFollow2D.moving = true
	$Path2D3/PathFollow2D.move_speed =1.0
	$Path2D4/PathFollow2D.moving = true
	$Path2D4/PathFollow2D.move_Speed =1.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	const move_speed = 100
	$Path2D/PathFollow2D.progress += move_speed+delta
	$Path2D2/PathFollow2D.progress += move_speed+delta
	$Path2D3/PathFollow2D.progress += move_speed+delta
	$Path2D4/PathFollow2D.progress += move_speed+delta
