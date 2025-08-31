extends Area2D

@onready var timer: Timer = $Timer

func _on_body_entered(body):
	if body.name == "Player": # Or check if body is in a specific group
		print("You died!")
		Engine.time_scale = 0.5
		body.get_node("CollisionPolygon2D").queue_free()
		timer.start()
	


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
