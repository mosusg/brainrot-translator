extends Control

@onready var sprite = $no  # Your Sprite node
@onready var timer = $no/Timer  # Your Timer node
@onready var button = $"CenterContainer/VBoxContainer2/Option 1"  # Your Button node

func _ready() -> void:
	sprite.visible = false
	
func _on_option_1_pressed() -> void:
	sprite.visible = true
	timer.start(2.0)

func _on_timer_timeout():
	# Hide the sprite when the timer times out
	sprite.visible = false
	
func _on_option_2_pressed() -> void:
	pass

func _on_option_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
