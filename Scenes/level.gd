extends Node2D

@export var diff = "Easy"

@export var need_change = false

@export var board = [["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"],
					 ["-1","-1","-1","-1","-1","-1","-1","-1","-1"]]

var change = [[-1,-1,-1,-1,-1,-1,-1,-1,-1],
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
var active_pos


func _ready() -> void:
	$Buttons/Back/Back.modulate = Color(1, 1, 1, 0)
	$Quit_or_not/Yes.modulate = Color(1, 1, 1, 0)
	$Quit_or_not/No.modulate = Color(1, 1, 1, 0)



func _process(delta: float) -> void:
	if position.x <= 1366 and need_change == true:
		need_change = false
		for xx in range(0, 9):
			for yy in range(0, 9):
				var num = yy * 9 + xx + 1
				var cur = get_node("Numbers/" + str(num))
				if(board[xx][yy] != "."):
					cur.text = " " + str(board[xx][yy]) + " "
					
					cur.set("theme_override_colors/font_color", Color(0.275, 0.259, 0.369, 255))
					change[xx][yy] = 0
					#cur.theme_override_colors/font_color = Color(70, 66, 94, 255)
				else:
					cur.text = ""
					change[xx][yy] = 1
					cur.set("theme_override_colors/font_color", Color("#7f58b9"))
	
	#region Обработка ввода с клавиатуры
	if Input.is_action_just_pressed("1"):
		_on__pressed_1();
	
	if Input.is_action_just_pressed("2"):
		_on__pressed_2();
	
	if Input.is_action_just_pressed("3"):
		_on__pressed_3();
	
	if Input.is_action_just_pressed("4"):
		_on__pressed_4();
	
	if Input.is_action_just_pressed("5"):
		_on__pressed_5();
	
	if Input.is_action_just_pressed("6"):
		_on__pressed_6();
	
	if Input.is_action_just_pressed("7"):
		_on__pressed_7();
	
	if Input.is_action_just_pressed("8"):
		_on__pressed_8();
	
	if Input.is_action_just_pressed("9"):
		_on__pressed_9();
	
	if Input.is_action_just_pressed("Backspace"):
		_on__pressed_backspace();
	#endregion
		


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
				active_pos = [xx,yy]
				#$Selected.position = active.position
				print(active)


#region Сигналы с кнопок
func _on__pressed_1() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 1 "

func _on__pressed_2() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 2 "

func _on__pressed_3() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 3 "

func _on__pressed_4() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 4 "

func _on__pressed_5() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 5 "

func _on__pressed_6() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 6 "

func _on__pressed_7() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 7 "

func _on__pressed_8() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 8 "

func _on__pressed_9() -> void:
	if is_instance_valid(active):
		var xx = active_pos[0]
		var yy = active_pos[1]
		
		if change[xx][yy] == 1:
			active.text = " 9 "

func _on__pressed_backspace() -> void:
	if is_instance_valid(active):
		active.text = ""
#endregion


func _back_button() -> void:
	$"../Swipe".play("Menu_level_swipe_rev")
	$Quit_or_not.visible = false


func _on_back_button_up() -> void:
	$Quit_or_not.visible = true


func _on_no_button_down() -> void:
	$Quit_or_not.visible = false
