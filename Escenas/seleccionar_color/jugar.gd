extends Button
signal item_id_selected(item_id: int)
var id_color = 1
var num_fichas = 1
var color_jugador = Color8(187,63,53)

func _on_colores_item_seleccionado(color, id):
	color_jugador = color 
	id_color = id

func _on_slider_fichas_value_changed(value):
	num_fichas = value

func _on_pressed():
	var target = preload("res://Escenas/partida/partida.tscn")
	var targetInstance = target.instantiate()
	targetInstance.set_num_fichas(num_fichas)
	targetInstance.set_color(id_color, color_jugador)
	get_tree().get_root().add_child(targetInstance)
	get_tree().get_root().get_node("Control").queue_free()
	

