extends Control

@onready var decisionButtons = $"Control/VBoxContainer2"
@onready var difficultyButtons = $Sigmabox
@onready var backButton = $Back
@onready var infoLord = $infoLord

func _ready() -> void:
	decisionButtons.visible = true
	difficultyButtons.visible = false

func _on_option_1_pressed() -> void:
	decisionButtons.visible = false
	difficultyButtons.visible = true

func _on_option_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/flashcards.tscn")

func _on_option_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/deck_hand.tscn")

func _on_back_pressed() -> void:
	if decisionButtons.visible:
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
	else:
		decisionButtons.visible = true
		difficultyButtons.visible = false

func _on_easy_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/quiz.tscn")
	infoLord.globalQuizDif = 1

func _on_medium_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/quiz.tscn")
	infoLord.globalQuizDif = 2

func _on_hard_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/quiz.tscn")
	infoLord.globalQuizDif = 3
