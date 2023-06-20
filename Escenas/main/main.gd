extends Node2D
func _on_jugar_pressed():
	get_tree().change_scene_to_file("res://Escenas/seleccionar_color/seleccionar_color.tscn")

func _on_salir_pressed():
	get_tree().quit()

