extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player": # Or check if body is in a specific group
		print("Player has reached the finish line!")
		get_tree().change_scene_to_file("res://scenes/VictoryScreen.tscn")
	
