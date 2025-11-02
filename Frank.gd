extends Node2D
var Lever = true
var Move = true
var Risenfrank = false
var arms = true
var legs = true
var torso = true
var head = true
var holdarms = false
var holdlegs = false
var holdtorso = false
var holdhead = false
var GG = false
var grave1 = true
var grave2 = true
var grave3 = true
var grave4 = true
var grave5 = true
var grave6 = true
var grave7 = true
var grave8 = true
var shovel = false
var A = false
var B = false
var C = false
var D = false
var Q = false
var W = false
var E = false
var R = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
func _Allowmove() -> void:
	#End Game
	$"Message and end of world/Path2D/PathFollow2D".move_speed =1.0
	$"Message and end of world/Path2D/PathFollow2D".moving = true
	#The remains
	$"Random remains/Arms/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Arms/Path2D/PathFollow2D".moving = true
	$"Random remains/Legs/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Legs/Path2D/PathFollow2D".moving = true
	$"Random remains/Torso/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Torso/Path2D/PathFollow2D".moving = true
	$"Random remains/Head/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Head/Path2D/PathFollow2D".moving = true
	#Lever
	$"Pulling lever/Path2D/PathFollow2D".move_speed =1.0
	$"Pulling lever/Path2D/PathFollow2D".moving = true
	#Pedestal
	$"Putting together his body/Path2D/PathFollow2D".move_speed =1.0
	$"Putting together his body/Path2D/PathFollow2D".moving = true
	#Graves
	$"../Graveyard/Grave/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave2/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave2/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave3/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave3/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave4/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave4/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave5/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave5/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave6/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave6/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave7/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave7/Path2D/PathFollow2D".moving = true
	$"../Graveyard/Grave8/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Grave8/Path2D/PathFollow2D".moving = true
	#Fresh graves
	$"../Graveyard/Fresh/Path2D/PathFollow2D/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Fresh/Path2D/PathFollow2D/Path2D/PathFollow2D".moving = true
	#Shovel
	$"../Graveyard/Shovel/Path2D/PathFollow2D".move_speed =1.0
	$"../Graveyard/Shovel/Path2D/PathFollow2D".moving = true
	#The Area ped to char
	$"../Lab Ped Spin/Path2D/PathFollow2D".move_speed =100.0
	$"../Lab Ped Spin/Path2D/PathFollow2D".moving = true
	$"../Lab Ped Spin/Path2D2/PathFollow2D".move_speed =100.0
	$"../Lab Ped Spin/Path2D2/PathFollow2D".moving = true
	$"../Lab Ped Spin/Path2D3/PathFollow2D".move_speed =100.0
	$"../Lab Ped Spin/Path2D3/PathFollow2D".moving = true
	$"../Lab Ped Spin/Path2D4/PathFollow2D".move_speed =100.0
	$"../Lab Ped Spin/Path2D4/PathFollow2D".moving = true
	#Text
	$TextMove/Path2D/PathFollow2D.move_speed =1.0
	$TextMove/Path2D/PathFollow2D.moving = true
	#Head
	$"Random remains/Head/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Head/Path2D/PathFollow2D".moving = true
	#Legs
	$"Random remains/Legs/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Legs/Path2D/PathFollow2D".moving = true
	#Arms
	$"Random remains/Arms/Path2D/PathFollow2D".move_speed =1.0
	$"Random remains/Arms/Path2D/PathFollow2D".moving = true
	#Book
	$"../The Library/Path2D/PathFollow2D".move_speed =1.0
	$"../The Library/Path2D/PathFollow2D".moving = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	const move_speed = 100
	#The Remains
	$"Random remains/Arms/Path2D/PathFollow2D".progress += move_speed+delta
	$"Random remains/Legs/Path2D/PathFollow2D".progress += move_speed+delta
	$"Random remains/Torso/Path2D/PathFollow2D".progress += move_speed+delta
	$"Random remains/Head/Path2D/PathFollow2D".progress += move_speed+delta
	#Lever
	$"Pulling lever/Path2D/PathFollow2D".progress += move_speed+delta
	#Pedestal
	$"Putting together his body/Path2D/PathFollow2D".progress += move_speed+delta
	#Graves
	$"../Graveyard/Grave/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave2/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave3/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave4/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave5/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave6/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave7/Path2D/PathFollow2D".progress += move_speed+delta
	$"../Graveyard/Grave8/Path2D/PathFollow2D".progress += move_speed+delta
	#FreshGraves
	$"../Graveyard/Fresh/Path2D/PathFollow2D/Path2D/PathFollow2D".progress += move_speed+delta
	#Shovel
	$"../Graveyard/Shovel/Path2D/PathFollow2D".progress += move_speed+delta
	#Head
	$"Random remains/Head/Path2D/PathFollow2D".progress += move_speed+delta
	#Legs
	$"Random remains/Legs/Path2D/PathFollow2D".progress += move_speed+delta
	#Arms
	$"Random remains/Arms/Path2D/PathFollow2D".progress += move_speed+delta
	#Book
	$"../The Library/Path2D/PathFollow2D".progress += move_speed+delta
	if Risenfrank == true:
		$"Message and end of world/AnimatedSprite2D".play("Ugly")
		$"Message and end of world/Path2D/PathFollow2D".progress += move_speed+delta
		$"Putting together his body/Head".play("Animated")
		$TextMove/Path2D/PathFollow2D.progress += move_speed+delta
	
	if A == true:
		$"../Lab Ped Spin/Path2D/PathFollow2D".progress += move_speed+delta
	if B == true:
		$"../Lab Ped Spin/Path2D2/PathFollow2D".progress += move_speed+delta
	if C == true:
		$"../Lab Ped Spin/Path2D3/PathFollow2D".progress += move_speed+delta
	if D == true:
		$"../Lab Ped Spin/Path2D4/PathFollow2D".progress += move_speed+delta
	if Input.is_action_pressed("ui_On"):
		pass




#Makes you leave the scene
#func _on_area_2d_body_entered(body: Node2D) -> void:
	#if body is CharacterBody2D:
		#get_tree().change_scene_to_file("res://Books.tscn")


func _on_lever_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_On"):
			if Move == true:
				if Risenfrank == false:
					if Lever == true:
						if holdarms == false:
							if holdlegs == false:
								if holdtorso == false:
									if holdhead == false:
										if GG == true:
											if Q == true:
												if W == true:
													if E == true:
														if R == true:
															Risenfrank = true
															Lever = false
															$"Pulling lever/AnimatedSprite2D".play("Pulled")



#Pick up the body parts 
func _on_arms_2_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_Remainon"):
			if arms == true:
				$Character/CharacterBody2D/Arms.play("Arms")
				$"Random remains/Arms/Arms2".play("No arms")
				holdarms = true
				arms = false
func _on_legs_2_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_Remainon"):
			if legs == true:
				legs = false
				$Character/CharacterBody2D/Legs.play("Legs")
				$"Random remains/Legs/Legs".play("No legs")
				holdlegs = true
#func _on_torso_2_body_entered(body: Node2D) -> void:
func _on_head_2_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_Remainon"):
			if head == true:
				head = false
				$Character/CharacterBody2D/Head.play("Head")
				$"Random remains/Head/Head".play("No Head")
				holdhead = true


#Place the Body parts on the Pedestal
func _on_pedestal_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if holdarms == true:
			holdarms = false
			GG = true
			$Character/CharacterBody2D/Arms.play("No Arms")
			$"Putting together his body/Arms".play("Arms")
			A = true
			Q = true
	if body is CharacterBody2D:
		if holdlegs == true:
			holdlegs = false
			$Character/CharacterBody2D/Legs.play("No Legs")
			$"Putting together his body/Legs".play("Legs")
			B = true
			W = true
	if body is CharacterBody2D:
		if holdtorso == true:
			holdtorso = false
			$Character/CharacterBody2D/Torso.play("No Torso")
			$"Putting together his body/Torso".play("Torso")
			C = true
			E = true
	if body is CharacterBody2D:
		if holdhead == true:
			holdhead = false
			$Character/CharacterBody2D/Head.play("No Head")
			$"Putting together his body/Head".play("Head")
			D = true
			R = true

#Open the graves
func _on_grave_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave1 == true:
				$"../Graveyard/Grave/AnimatedSprite2D".play("Undone")
				grave1 = false
func _on_grave_2_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave2 == true:
				$"../Graveyard/Grave2/AnimatedSprite2D".play("Undone")
				grave2 = false
func _on_grave_3_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave3 == true:
				$"../Graveyard/Grave3/AnimatedSprite2D".play("Undone")
				grave3 = false
				$"../Graveyard/Fresh/Path2D/PathFollow2D".progress = 1.0
				$"../Graveyard/Fresh/Path2D/PathFollow2D/AnimatedSprite2D".play("Torso")
func _on_grave_4_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave4 == true:
				$"../Graveyard/Grave4/AnimatedSprite2D".play("Undone")
				grave4 = false
func _on_grave_5_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave5 == true:
				$"../Graveyard/Grave5/AnimatedSprite2D".play("Undone")
				grave5 = false
func _on_grave_6_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave6 == true:
				$"../Graveyard/Grave6/AnimatedSprite2D".play("Undone")
				grave6 = false
func _on_grave_7_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave7 == true:
				$"../Graveyard/Grave7/AnimatedSprite2D".play("Undone")
				grave7 = false
func _on_grave_8_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == true:
			if grave8 == true:
				$"../Graveyard/Grave8/AnimatedSprite2D".play("Undone")
				grave8 = false

#Torso in Grave
func _on_fresh_torso_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if Input.is_action_pressed("ui_Remainon"):
			if torso == true:
				torso = false
				$Character/CharacterBody2D/Torso.play("Torso")
				$"Random remains/Torso/Torso".play("No Torso")
				$"../Graveyard/Fresh/Path2D/PathFollow2D/AnimatedSprite2D".play("No Torso")
				
				holdtorso = true

#Put and pick shovel
func _on_shovel_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		if shovel == false:
			if Input.is_action_pressed("ui_Pickup"):
				
				$"../Graveyard/Shovel/Shovel".play("No Shovel")
				$Character/CharacterBody2D/Shovel.play("Shovel")
				shovel = true
		elif shovel == true:
			if Input.is_action_pressed("ui_PickDown"):
				$"../Graveyard/Shovel/Shovel".play("Shovel")
				$Character/CharacterBody2D/Shovel.play("No shovel")
				shovel = false
	


func _on_text_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		$Character/CharacterBody2D/tEXT.play("TEXT")
