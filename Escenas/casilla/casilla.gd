extends Area2D
signal jugador_entro(ficha_id, jugador_id)
func _on_body_entered(body):
	#jugador_entro.emit(body.id, body.jugador.id)
	print("Entro la ficha: ", body.id)
