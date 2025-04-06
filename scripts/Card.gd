@tool
extends Node2D

@export var card_cost: int = 1
@export var card_name: String = "Card Name"
@export var card_desc: String = "Card Desc"
@export var card_image: Sprite2D


@onready var cost_lbl: Label = $CostDisp/Costlbl
@onready var name_lbl: Label = $CardName/Namelbl
@onready var desc_lbl: Label = $CardDescription/Desclbl


func _ready():
	set_card_values(card_cost, card_name, card_desc)

func set_card_values(_Cost: int, _Name: String, _Desc: String):
	cost_lbl.set_text(str(_Cost))
	name_lbl.set_text(_Name)
	desc_lbl.set_text(_Desc)
	
	_update_graphics()

func _update_graphics():
	if cost_lbl.get_text() != str(card_cost):
		cost_lbl.set_text(str(card_cost))
	if name_lbl.get_text() != card_name:
		name_lbl.set_text(card_name)
	if desc_lbl.get_text() != card_desc:
		desc_lbl.set_text(card_desc)
		
func _process(delta: float) -> void:
	_update_graphics()
