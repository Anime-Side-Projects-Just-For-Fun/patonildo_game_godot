extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Patonildo':
		queue_free() ### Remove objeto da cena
	pass
