@tool
extends Node2D

@export var hand_radius: int = 100

@onready var collision_shape: CollisionShape2D = $DebugShape

func get_card_position(angle: float):
	pass

func _process(delta: float) -> void:
	
	
	if (collision_shape.shape as CircleShape2D).radius != hand_radius:
		(collision_shape.shape as CircleShape2D).set_radius(hand_radius)
