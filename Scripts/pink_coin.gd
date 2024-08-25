extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Patonildo':
		queue_free() ### Remove objeto da cena
		var coins = get_tree().get_nodes_in_group('PinkCoins')
		print('Remaining coins: ', coins.size() - 1)
		if coins.size() == 1:
			print('Você coletou todos os PinkCoins!')
	pass
