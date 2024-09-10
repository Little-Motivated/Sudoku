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

var active = [-1,-1]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(get_global_mouse_position())
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if self.get_viewport_rect().has_point(get_global_mouse_position()):
			pass
			# print("gddfsdg")


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
