extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Play_button/Play.modulate = Color(1, 1, 1, 0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_up() -> void:
	get_tree().change_scene_to_file("res://Scenes/level.tscn")
