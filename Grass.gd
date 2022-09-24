extends Node2D



func create_grass_effect():
	if Input.is_action_just_pressed("Attack"):
		var GrassEffect = load("res://GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()
		var world = get_parent()
		world.add_child(grassEffect)
		grassEffect.global_position = global_position
		queue_free()


func _on_Hurtbox_area_entered(area):
	queue_free()
