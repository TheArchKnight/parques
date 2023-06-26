extends TextureButton

var generador = RandomNumberGenerator.new()
signal cambiar_texto(dado1, dado2)
func _on_pressed():
	var dado1 = generador.randi_range(1,6)
	var dado2 = generador.randi_range(1,6)
	cambiar_texto.emit(dado1, dado2)
	
