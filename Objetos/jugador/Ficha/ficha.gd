extends CharacterBody2D

@export var color : Color 
# Called when the node enters the scene tree for the first time.
func _ready():
	modulate = color
