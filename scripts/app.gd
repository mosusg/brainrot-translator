extends Control

@onready var decisionButtons = $"Control/VBoxContainer2"
@onready var difficultyButtons = $Sigmabox

func _ready() -> void:
	decisionButtons.visible = true
	difficultyButtons.visible = false

func _on_option_1_pressed() -> void:
	decisionButtons.visible = false
	difficultyButtons.visible = true
	
	
	#get_tree().change_scene_to_file("res://scenes/quiz.tscn")

func _on_option_2_pressed() -> void:
	pass

func _on_option_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
