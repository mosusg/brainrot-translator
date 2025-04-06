extends Node2D

@onready var attack_card_scene: PackedScene = preload("res://scenes/cards/attack_card.tscn")
@onready var defend_card_scene: PackedScene = preload("res://scenes/cards/defend_card.tscn")

@onready var hand: Hand = $CanvasLayer/Hand

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_card_test_pressed() -> void:
	var attack_card = attack_card_scene.instantiate()
	hand.add_card(attack_card)
	print("Attack card added")

func _on_card_test_2_pressed() -> void:
	var defend_card = defend_card_scene.instantiate()
	hand.add_card(defend_card)
	print("Defend card added")
