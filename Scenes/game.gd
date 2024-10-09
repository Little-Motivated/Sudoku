extends Node2D

func _ready() -> void:
	$Level.diff = $Menu.diff


func _process(delta: float) -> void:
	if $Menu.need_change == true:
		$Level.board = $Menu.board
		$Menu.need_change = false;
		$Level.need_change = true;
