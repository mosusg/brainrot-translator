extends Node2D

@onready var rizz_card_scene: PackedScene = preload("res://scenes/cards/rizz_card.tscn")
@onready var mog_card_scene: PackedScene = preload("res://scenes/cards/mog_card.tscn")
@onready var aura_card_scene: PackedScene = preload("res://scenes/cards/aura_card.tscn")

@onready var hand: Hand = $CanvasLayer/Hand

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _on_rizz_pressed() -> void:
	var rizz_card = rizz_card_scene.instantiate()
	hand.add_card(rizz_card)
	print("rizz card added")


func _on_mog_pressed() -> void:
	var mog_card = mog_card_scene.instantiate()
	hand.add_card(mog_card)
	print("mog card added")

func _on_aura_pressed() -> void:
	var aura_card = aura_card_scene.instantiate()
	hand.add_card(aura_card)
	print("aura card added")
