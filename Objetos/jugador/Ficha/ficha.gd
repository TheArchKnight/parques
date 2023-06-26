extends CharacterBody2D

@export var color : Color 
@export var id : int

#var speed = 300
#var click_position = Vector2(0,0)
## Called when the node enters the scene tree for the first time.
func _ready():
	modulate = color
#	click_position = Vector2(position.x, position.y)
#
#func _physics_process(delta):
#	if Input.is_action_just_pressed("left_click"):
#		click_position = get_global_mouse_position()
#		print(click_position)
#
#	velocity = (click_position - position).normalized() * speed
#
#	if position.distance_to(click_position) > 3:
#		move_and_slide()
#

