extends Control

@onready var bar = $ProgressBar
@onready var sprite = $AnimatedSprite2D

func _ready() -> void:
	sprite.animation.play(infoLord.emojiState)
