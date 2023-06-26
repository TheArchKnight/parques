extends OptionButton
signal item_seleccionado(color:Color, id: int)
func _ready():
	add_item("Rojo",1)
	add_item("Verde",2)
	add_item("Rosado",3 )
	add_item("Azul",4)
	add_item("Morado", 5)
	add_item("Naranja", 6)
	add_item("Amarrillo", 7)

func _on_item_selected(index):
	var item = get_item_id(index)
	var color
	if item == 1:
		color = Color8(187,63,53)
	elif item == 2:
		color = Color8(118, 165, 75)
	elif item == 3:
		color = Color8(204, 102, 153)
	elif item == 4:
		color = Color8(108, 155, 192)
	elif item == 5:
		color = Color8(123,87, 153)
	elif item == 6:
		color = Color8(215, 140, 56)
	elif item == 7:
		color = Color8(222, 201, 71)
	
	item_seleccionado.emit(color, item)
