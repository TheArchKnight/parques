extends OptionButton
signal item_seleccionado(id:int)
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
	item_seleccionado.emit(item)
