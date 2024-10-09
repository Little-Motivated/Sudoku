extends Node2D

@export var diff = "Easy"

@export var need_change = false

@export var board = [[-1,-1,-1,-1,-1,-1,-1,-1,-1],
		 	 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1],
			 [-1,-1,-1,-1,-1,-1,-1,-1,-1]]

func _ready() -> void:
	$Play_button/Play.modulate = Color(1, 1, 1, 0)


func _process(delta: float) -> void:
	pass


func _easy_button() -> void:
	diff = "Easy"
	update_board()
	$"../Swipe".play("Menu_level_swipe")

func _medium_button() -> void:
	diff = "Medium"
	update_board()
	$"../Swipe".play("Menu_level_swipe")

func _hard_button() -> void:
	diff = "Hard"
	update_board()
	$"../Swipe".play("Menu_level_swipe")

func update_board():
	var file_nums = FileAccess.open("res://Resourses/Problems/" + str(diff) + "/unsolved.txt", FileAccess.READ)
	var file_list = FileAccess.open("res://Resourses/Problems/" + str(diff) + "/list.txt", FileAccess.READ)
	var next = FileAccess.open("res://Resourses/Problems/" + str(diff) + "/next.txt", FileAccess.READ)
	
	if file_nums:
		var unsolved_st = file_nums.get_as_text()
		var list_st = file_list.get_as_text()
		
		var num
		
		var nums = unsolved_st.split("\n")
		var list = list_st.split("\n")
		
		if(nums[nums.size() - 1] == ""):
			num = randi_range(0, nums.size() - 1)
		else:
			num = randi_range(0, nums.size())
		
		num = int(nums[num])
		
		print(list.size())
		
		#var cur = list[num].split("")
		var cur = str(list[0])
		
		for i in range(0, 9):
			for j in range(0, 9):
				board[i][j] = str(list[num][i + j * 9])
			
		#print(board)
		file_nums.close()
		file_list.close()
		need_change = true;
