extends Node2D
# Called when the node enters the scene tree for the first time.
func set_num_fichas(num_fichas):
	var jugador = get_node("Jugador")
	for i in range(4 - num_fichas):
		jugador.get_child(i).queue_free()
		
func set_color(id, color):		
	var jugador = get_node("Jugador")
	var base = get_node("Tablero").get_node("base{id}".format({"id": id}))
	var carcel = base.get_node("Carcel")
	jugador.global_position = carcel.global_position
	print("id: ", id)
	for ficha in jugador.get_children():
		ficha.color = color
		

