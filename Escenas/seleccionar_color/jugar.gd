extends Button
signal item_id_selected(item_id: int)
var id_color

func _on_colores_item_seleccionado(id):
	print("Color: ", id)
	id_color = id

func _on_pressed():
	var target = preload("res://Escenas/partida/partida.tscn")
	var targetInstance = target.instantiate()
	targetInstance.set_color(id_color)
	get_tree().get_root().add_child(targetInstance)
	get_tree().get_root().get_node("Control").queue_free()
	
