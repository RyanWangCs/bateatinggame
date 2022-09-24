extends Node2D

onready var animatedSprite = $AnimatedSprite


func _ready():
	animatedSprite.frame = 0
	animatedSprite.play("Animate")
	get_node("AnimatedSprite").playing = true



func _on_AnimatedSprite_animation_finished():
	print("i shoot niggas for fun")
	queue_free()
