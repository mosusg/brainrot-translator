extends Control

func _on_option_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/app.tscn")

func _on_option_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/settings.tscn")

func _on_option_3_pressed() -> void:
	get_tree().quit()
