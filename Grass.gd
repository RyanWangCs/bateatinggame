extends Node2D



func _process(delta):
	if Input.is_action_just_pressed("Attack"):
		var GrassEffect = load("res://GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()
		var world = get_tree().current_scene
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		queue_free()
