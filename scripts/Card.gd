@tool
extends Node2D

# existing exports
@export var card_cost: int = 1
@export var card_name: String = "Card Name"
@export var card_desc: String = "Card Desc"
@export var card_image: Sprite2D

# references
@onready var cost_lbl: Label = $CostDisp/Costlbl
@onready var name_lbl: Label = $CardName/Namelbl
@onready var desc_lbl: Label = $CardDescription/Desclbl
@onready var base_sprite: Sprite2D = $CardBase

# static to track currently hovered card
static var currently_hovered_card: Node2D = null

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

func highlight():
	base_sprite.set_modulate(Color(.15, .7, .7, 1))

func unhighlight():
	base_sprite.set_modulate(Color(1, 1, 1, 1))

func _process(delta: float) -> void:
	_update_graphics()
	
	# This makes sure only one card stays highlighted
	if currently_hovered_card != self:
		unhighlight()

func _on_area_2d_mouse_entered() -> void:
	currently_hovered_card = self
	highlight()

func _on_area_2d_mouse_exited() -> void:
	if currently_hovered_card == self:
		currently_hovered_card = null
	unhighlight()
