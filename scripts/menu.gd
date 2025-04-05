extends Control

#start
func _on_start_pressed() -> void:
		get_tree().change_scene_to_file("res://scenes/app.tscn")
		
#settings
func _on_settings_pressed() -> void:
	pass # Replace with function body.

#quit
func _on_quit_pressed() -> void:
		get_tree().quit()
