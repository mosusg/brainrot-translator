# Inside Hand.gd

@tool
class_name Hand extends Node2D

@export var hand_radius: int = 100
@export var card_angle: float = 90
@export var angle_limit: float = 25
@export var max_card_spread_angle: float = 3

@onready var test_card = $test_card
@onready var collision_shape: CollisionShape2D = $DebugShape

var hand: Array = []

func add_card(card: Node2D):
	hand.push_back(card)
	add_child(card)
	reposition_cards()

func remove_card(index: int) -> Node2D:
	var removing_card = hand[index]
	hand.remove_at(index)
	remove_child(removing_card)
	reposition_cards()
	return removing_card


func reposition_cards():
	var card_spread = min(angle_limit / hand.size(), max_card_spread_angle)
	var current_angle = -(card_spread * (hand.size() - 1)) / 2 -90
	for card in hand:
		_update_card_transform(card, current_angle)
		current_angle += card_spread

func get_card_position(angle_in_deg: float) -> Vector2:
	var x: float = hand_radius * cos(deg_to_rad(angle_in_deg))
	var y: float = hand_radius * sin(deg_to_rad(angle_in_deg))
	return Vector2(int(x), int(y))

func _update_card_transform(card: Node2D, angle_in_deg: float):
	card.set_position(get_card_position(angle_in_deg))
	card.set_rotation(deg_to_rad(angle_in_deg + 90))

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if (collision_shape.shape as CircleShape2D).radius != hand_radius:
		(collision_shape.shape as CircleShape2D).set_radius(hand_radius)
	test_card.set_position(get_card_position(card_angle))
	test_card.set_rotation(deg_to_rad(card_angle + 90))
