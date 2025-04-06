extends Control

@onready var bar = $ProgressBar
@onready var anim = $ProgressBar/AnimatedSprite2D
@onready var addingAhh = $ProgressBar/Label
var onGains : float
var level = 1

var target_value = 0.0
var lerp_speed = 0.8  # Speed of the interpolation

func _ready() -> void:
	addingAhh.set_text("+0%")
	target_value = bar.value

func doBar(amount: float) -> void:
	target_value = clamp(bar.value + amount, bar.min_value, bar.max_value)

func _process(delta: float) -> void:
	bar.value = lerp(bar.value, target_value, lerp_speed * delta)
	
	onGains = bar.value + onGains
	addingAhh.set_text("+" + str(onGains) + "%")
	
	if level == 1:
		anim.play("geeked")
		bar.max_value = 100
	elif level == 2:
		anim.play("mid")
		bar.max_value = 200
	elif level == 3:
		anim.play("locked")
		bar.max_value = 400
		
	if bar.value >= 99.5 and level == 1:
		level += 1
		bar.value = 0
	elif bar.value >= 199.5 and level == 2:
		level += 1
		bar.value = 0
