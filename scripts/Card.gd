extends Node2D

@export var CardName: String = "Card Name"
@export var CardDesc: String = "Card Desc"

@export var CardCost: int = 1
@export var CardImage: Node2D


@onready var Costlbl: Label = $CostDisp/Costlbl
@onready var Namelbl: Label = $CardName/Namelbl
@onready var Desclbl: Label = $CardDescription/Desclbl


func _ready():
	Costlbl.set_text(str(CardCost))
	Namelbl.set_text(CardName)
	Desclbl.set_text(CardDesc)
