extends Node2D

var speed = 60
var direction = 1

@onready var ray_cast_right = $RayCast_right
@onready var ray_cast_left = $RayCast_left
@onready var animated_sprite_2d = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * speed * delta
