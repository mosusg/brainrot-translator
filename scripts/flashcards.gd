extends Node2D

# For Flashcard 1
@onready var flashcard_button = $FlashcardButton
var current_word1 = ""
var showing_definition1 = false

@onready var card_label1 = $Card/flip_button  # Ensure this path is correct
@onready var flip_button1 = $FlipButton

# For Flashcard 2
var current_word2 = ""
var showing_definition2 = false

@onready var card_label2 = $Card2/flip_button2  # Ensure this path is correct
@onready var flip_button2 = $FlipButton2

@onready var infoLord = $infoLord

# Show random word for Flashcard 1
func _show_random_word1():
	if card_label1:
		var keys = infoLord.words.keys()
		current_word1 = keys[randi() % keys.size()]
		card_label1.text = current_word1  # This assumes it's a Label or Button with text property
		showing_definition1 = false

# Show random word for Flashcard 2
func _show_random_word2():
	if card_label2:
		var keys = infoLord.words.keys()
		current_word2 = keys[randi() % keys.size()]
		card_label2.text = current_word2  # This assumes it's a Label or Button with text property
		showing_definition2 = false

# Called when the scene is ready
func _ready():
	randomize()
	_show_random_word1()
	_show_random_word2()

func _on_flip_button_pressed() -> void:
	if showing_definition1:
		_show_random_word1()  # Show random word when clicked again
	else:
		var definition = infoLord.words[current_word1]["DEFINITION"]
		card_label1.set_text(definition)  # Show definition
		showing_definition1 = true


func _on_flip_button_2_pressed() -> void:
	if showing_definition2:
		_show_random_word2()  # Show random word when clicked again
	else:
		var definition = infoLord.words[current_word2]["DEFINITION"]
		card_label2.set_text(definition)
		showing_definition2 = true
