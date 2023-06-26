extends Label

func _on_dados_cambiar_texto(dado1, dado2):
	self.text = "Resultado: %s %s" % [dado1,dado2]
