extends Area2D
signal selection_toggled(selection)
@export var exclusive = true
@export var selection_action = "selection"

var selected : bool:
	set(selection):
		if selection:
			_make_exclusive()
			add_to_group("selected")
		else:
			remove_from_group("selected")
		selected = selection
		emit_signal("selection_toggled", selected)
		
func _make_exclusive():
	if not selected:
		return
	get_tree().call_group("selected", "set_selected", false)
	
