extends Node2D

@onready var attack_card_scene: PackedScene = preload("res://scenes/cards/attack_card.tscn")
@onready var defend_card_scene: PackedScene = preload("res://scenes/cards/defend_card.tscn")

@onready var spawn_point = $CanvasLayer/spawn

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
	
func _on_card_test_pressed() -> void:
	var attack_card = attack_card_scene.instantiate()
	spawn_point.add_child(attack_card)
