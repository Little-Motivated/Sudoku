extends Node2D

var board = [[-1,-1,-1,-1,-1,-1,-1,-1,-1],
		 	 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1]]

# var active = [-1,-1]
var active

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(get_global_mouse_position())
	if Input.is_physical_key_pressed(KEY_1):
		print("1111")
	else:
		pass
		


func _input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
			var mouse_pos = get_global_mouse_position()
			#add_child()
			print(mouse_pos)
			var xx: int = mouse_pos.x;
			var yy: int = mouse_pos.y;
			if(xx>=66 and xx<=705 and yy>=66 and yy<= 705):
				xx = (xx - 66) / 70;
				yy = (yy - 66) / 70;
				print(xx);
				print(yy);
				var num = yy * 9 + xx + 1
				active = get_node("Numbers/" + str(num))
				print(active)
				print(get_node("Numbersdvsa"))



func _on__pressed_1() -> void:
	if is_instance_valid(active):
		active.text = " 1 "
		print("asdaf")


func _on__pressed_2() -> void:
	if is_instance_valid(active):
		active.text = " 2 "


func _on__pressed_3() -> void:
	if is_instance_valid(active):
		active.text = " 3 "


func _on__pressed_4() -> void:
	if is_instance_valid(active):
		active.text = " 4 "


func _on__pressed_5() -> void:
	if is_instance_valid(active):
		active.text = " 5 "


func _on__pressed_6() -> void:
	if is_instance_valid(active):
		active.text = " 6 "


func _on__pressed_7() -> void:
	if is_instance_valid(active):
		active.text = " 7 "


func _on__pressed_8() -> void:
	if is_instance_valid(active):
		active.text = " 8 "


func _on__pressed_9() -> void:
	if is_instance_valid(active):
		active.text = " 9 "
