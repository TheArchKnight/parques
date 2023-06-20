extends Node2D
# Called when the node enters the scene tree for the first time.
func set_color(id):
	var color
	if id == 1:
		color = Color8(187,63,53)
	elif id == 2:
		color = Color8(118, 165, 75)
	elif id == 3:
		color = Color8(204, 102, 153)
	elif id == 4:
		color = Color8(108, 155, 192)
	elif id == 5:
		color = Color8(123,87, 153)
	elif id == 6:
		color = Color8(215, 140, 56)
	elif id == 7:
		color = Color8(222, 201, 71)
	
	var jugador = get_node("Jugador")
	var fichas = jugador.get_children()
	for ficha in fichas:
		ficha.color = color
	

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
