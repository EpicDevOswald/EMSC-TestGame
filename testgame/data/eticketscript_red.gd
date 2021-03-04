extends Area2D

var score = 0

func _on_Red_ETicket_body_entered(body):
	queue_free()
	score += 1
	
